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
          <a class="contact-link whatsapp-link" :href="whatsappUrl" target="_blank" rel="noreferrer">
            <svg class="contact-icon" viewBox="0 0 24 24" aria-hidden="true">
              <path
                d="M12.04 4a7.86 7.86 0 0 0-6.8 11.79L4.2 19.66l3.97-1.03A7.85 7.85 0 1 0 12.04 4Zm4.63 11.15c-.2.56-1.17 1.08-1.62 1.12-.43.05-.96.07-1.55-.1-.36-.11-.82-.26-1.41-.52-2.48-1.07-4.1-3.58-4.23-3.75-.12-.17-1.01-1.35-1.01-2.58 0-1.22.64-1.82.87-2.07.22-.25.5-.31.66-.31h.48c.15.01.36-.06.56.43.21.5.71 1.72.77 1.84.06.13.1.28.02.45-.08.17-.12.28-.25.43-.12.15-.26.33-.37.44-.12.12-.25.25-.11.5.13.25.59.98 1.27 1.59.88.78 1.61 1.02 1.86 1.14.25.12.39.1.54-.06.15-.17.62-.72.79-.97.17-.25.33-.21.56-.13.23.08 1.47.7 1.72.82.25.12.42.19.48.3.06.1.06.6-.14 1.16Z"
              />
            </svg>
            <span class="contact-copy">
              <span>WhatsApp</span>
              <strong>+20 1146769064</strong>
            </span>
          </a>
          <a class="contact-link email-link" :href="emailUrl">
            <svg class="contact-icon" viewBox="0 0 24 24" aria-hidden="true">
              <path
                d="M5 6h14a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2Zm7 6.76L5.56 8.5a.75.75 0 0 0-.81 1.26l6.84 4.53a.75.75 0 0 0 .82 0l6.84-4.53a.75.75 0 0 0-.81-1.26L12 12.76Z"
              />
            </svg>
            <span class="contact-copy">
              <span>Email</span>
              <strong>saeedgamal0601@gmail.com</strong>
            </span>
          </a>
        </nav>

        <nav class="document-actions" aria-label="Document actions">
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
