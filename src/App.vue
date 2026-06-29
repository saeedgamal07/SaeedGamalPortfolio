<script setup>
import { onMounted } from 'vue'

const pdfUrl = '/SaeedGamal.Portfolio..pdf'
const whatsappUrl = 'https://wa.me/201146769064'
const emailUrl = 'mailto:saeedgamal0601@gmail.com'

onMounted(() => {
  const isSmallTouchDevice = window.matchMedia('(max-width: 768px) and (pointer: coarse)').matches
  const isMobileBrowser = /Android|iPhone|iPod|Windows Phone/i.test(window.navigator.userAgent)

  if (isSmallTouchDevice || isMobileBrowser) {
    window.location.replace(pdfUrl)
  }
})
</script>

<template>
  <main class="portfolio-document" aria-label="Saeed Gamal portfolio PDF">
    <header class="document-bar">
      <a class="brand" :href="pdfUrl" target="_blank" rel="noreferrer">Saeed Gamal Portfolio</a>

      <div class="header-actions">
        <nav class="contact-links" aria-label="Contact links">
          <a :href="whatsappUrl" target="_blank" rel="noreferrer">WhatsApp: +20 1146769064</a>
          <a :href="emailUrl">Email: saeedgamal0601@gmail.com</a>
        </nav>

        <nav class="document-actions" aria-label="Document actions">
          <a :href="pdfUrl" target="_blank" rel="noreferrer">Open PDF</a>
          <a :href="pdfUrl" download>Download</a>
        </nav>
      </div>
    </header>

    <section class="document-stage">
      <object
        class="pdf-frame"
        :data="`${pdfUrl}#toolbar=0&navpanes=0&scrollbar=1&view=FitH`"
        type="application/pdf"
        aria-label="Saeed Gamal portfolio PDF preview"
      >
        <div class="pdf-fallback">
          <h1>Saeed Gamal Portfolio</h1>
          <p>Your browser cannot preview this PDF inline.</p>
          <a :href="pdfUrl" target="_blank" rel="noreferrer">Open the portfolio PDF</a>
        </div>
      </object>
    </section>
  </main>
</template>
