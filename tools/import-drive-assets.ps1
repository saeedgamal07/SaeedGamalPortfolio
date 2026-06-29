param(
  [string]$RootFolderId = "1ZeSs541JwCwAsgX7blmrz-Ql4K792of1",
  [string]$OutDir = "public\campaign-assets",
  [int]$MaxFilesPerFolder = 4
)

$ErrorActionPreference = "Stop"

function Decode-HtmlText([string]$Value) {
  return [System.Net.WebUtility]::HtmlDecode($Value)
}

function Get-DriveEntries([string]$FolderId) {
  $url = "https://drive.google.com/embeddedfolderview?id=$FolderId#grid"
  $html = (Invoke-WebRequest -UseBasicParsing $url).Content
  $pattern = '<div class="flip-entry" id="entry-([^" ]+)"[\s\S]*?<a href="([^"]+)"[\s\S]*?<div class="flip-entry-title">([^<]+)</div>'
  return [regex]::Matches($html, $pattern) | ForEach-Object {
    $href = $_.Groups[2].Value
    [pscustomobject]@{
      Id = $_.Groups[1].Value
      Href = $href
      Title = Decode-HtmlText $_.Groups[3].Value
      IsFolder = $href -like "*drive/folders/*"
    }
  }
}

function Convert-ToSlug([string]$Text) {
  $slug = $Text.ToLowerInvariant() -replace '[^a-z0-9]+', '-'
  return $slug.Trim('-')
}

New-Item -ItemType Directory -Path $OutDir -Force | Out-Null

$manifest = @()
$folders = Get-DriveEntries $RootFolderId | Where-Object { $_.IsFolder }

foreach ($folder in $folders) {
  $folderSlug = Convert-ToSlug $folder.Title
  $folderOut = Join-Path $OutDir $folderSlug
  New-Item -ItemType Directory -Path $folderOut -Force | Out-Null

  $files = Get-DriveEntries $folder.Id | Where-Object { -not $_.IsFolder } | Select-Object -First $MaxFilesPerFolder
  $downloaded = @()
  $index = 1

  foreach ($file in $files) {
    $ext = [System.IO.Path]::GetExtension($file.Title)
    if ([string]::IsNullOrWhiteSpace($ext)) {
      $ext = ".jpg"
    }

    $fileName = "{0}-{1:00}{2}" -f $folderSlug, $index, $ext.ToLowerInvariant()
    $target = Join-Path $folderOut $fileName
    $downloadUrl = "https://drive.google.com/uc?export=download&id=$($file.Id)"

    Invoke-WebRequest -UseBasicParsing $downloadUrl -OutFile $target
    $downloaded += "/campaign-assets/$folderSlug/$fileName"
    $index++
  }

  $manifest += [pscustomobject]@{
    folder = $folder.Title
    slug = $folderSlug
    images = $downloaded
  }
}

$manifest | ConvertTo-Json -Depth 5 | Set-Content -Path (Join-Path $OutDir "manifest.json") -Encoding UTF8
$manifest | ConvertTo-Json -Depth 5
