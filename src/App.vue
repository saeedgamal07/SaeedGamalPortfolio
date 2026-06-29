<script setup>
const asset = (path) => `${import.meta.env.BASE_URL}${path}`

const pdfUrl = asset('SaeedGamal.Portfolio..pdf')
const heroPhoto = asset('saeed-hero-photo.png')
const portraitPhoto = asset('portfolio-portrait.png')
const whatsappUrl = 'https://wa.me/201146769064'
const emailUrl = 'mailto:saeedgamal0601@gmail.com'
const linkedInUrl = 'https://www.linkedin.com/in/saeedgamal007/'

const skills = [
  {
    title: 'Paid Media Buying',
    text: 'Campaign setup - audience targeting - budget optimization - performance analysis',
  },
  {
    title: 'Creative Content Mindset',
    text: 'Content ideas - hooks - scripts - creative direction',
  },
  {
    title: 'Campaign Growth',
    text: 'Lead generation - creative testing - organic reach - viral content',
  },
]

const campaigns = [
  {
    slide: '05',
    title: 'Other Real Estate Campaigns',
    category: 'Real Estate',
    text: 'Generating qualified leads requires accurate targeting, strong offers, and campaigns designed to turn interest into real opportunities.',
    images: [
      asset('campaign-assets/other-real-estate-campaigns/other-real-estate-campaigns-01.jpeg'),
      asset('campaign-assets/other-real-estate-campaigns/other-real-estate-campaigns-03.jpeg'),
      asset('campaign-assets/other-real-estate-campaigns/other-real-estate-campaigns-07.jpeg'),
    ],
  },
  {
    slide: '12',
    title: 'Meats And Greats',
    category: 'Food Content',
    text: 'Creating content that highlights the product and encourages customers to engage with the brand.',
    images: [
      asset('campaign-assets/meats-and-greats/meats-and-greats-01.jpeg'),
      asset('campaign-assets/meats-and-greats/meats-and-greats-04.jpeg'),
      asset('campaign-assets/meats-and-greats/meats-and-greats-10.jpg'),
    ],
  },
  {
    slide: '14',
    title: 'FishTime',
    category: 'Food Content',
    text: 'Building appetizing campaign visuals with direct offers, clear product focus, and social-first layout structure.',
    images: [
      asset('campaign-assets/fishtime/fishtime-01.jpeg'),
      asset('campaign-assets/fishtime/fishtime-05.jpeg'),
      asset('campaign-assets/fishtime/fishtime-09.jpg'),
    ],
  },
  {
    slide: '18',
    title: 'Mohamed Khalid Real Estate',
    category: 'Real Estate Content',
    text: 'Presenting real estate topics in a simple and engaging way that reaches a wider audience.',
    images: [
      asset('campaign-assets/mohamed-khalid-real-estate/mohamed-khalid-real-estate-01.jpeg'),
      asset('campaign-assets/mohamed-khalid-real-estate/mohamed-khalid-real-estate-02.jpeg'),
      asset('campaign-assets/mohamed-khalid-real-estate/mohamed-khalid-real-estate-03.jpeg'),
    ],
  },
  {
    slide: '20',
    title: 'Aya Kamal',
    category: 'Personal Branding Content',
    text: 'Turning economic and media expertise into clear and engaging content for a wider audience.',
    images: [
      asset('campaign-assets/aya-kamal/aya-kamal-01.jpeg'),
      asset('campaign-assets/aya-kamal/aya-kamal-07.jpeg'),
      asset('campaign-assets/aya-kamal/aya-kamal-10.jpeg'),
    ],
  },
  {
    slide: '21',
    title: 'Tree Design',
    category: 'Kitchens & Dressing Rooms Content',
    text: 'Presenting design ideas in a simple visual format that attracts attention and increases engagement.',
    images: [
      asset('campaign-assets/tree-design/tree-design-01.jpeg'),
      asset('campaign-assets/tree-design/tree-design-03.jpeg'),
      asset('campaign-assets/tree-design/tree-design-07.jpg'),
    ],
  },
  {
    slide: '22',
    title: 'Creative Decor',
    category: 'Interior Finishing Content',
    text: 'Transforming finishing projects and interior details into engaging visual content.',
    images: [
      asset('campaign-assets/creative-decor/creative-decor-01.jpeg'),
      asset('campaign-assets/creative-decor/creative-decor-03.jpeg'),
      asset('campaign-assets/creative-decor/creative-decor-05.jpg'),
    ],
  },
  {
    slide: '23',
    title: 'Grand Yoza',
    category: 'Food Content',
    text: 'Creating content that highlights the product and encourages customers to engage with the brand.',
    images: [
      asset('campaign-assets/grand-yoza/grand-yoza-01.jpeg'),
      asset('campaign-assets/grand-yoza/grand-yoza-04.jpeg'),
      asset('campaign-assets/grand-yoza/grand-yoza-06.jpg'),
    ],
  },
]
</script>

<template>
  <main class="portfolio-book">
    <header class="topbar">
      <a class="brand-mark" href="#cover">Saeed Gamal</a>
      <nav aria-label="Portfolio navigation">
        <a href="#about">About</a>
        <a href="#work">Work</a>
        <a href="#contact">Contact</a>
      </nav>
      <a class="pdf-link" :href="pdfUrl" download>PDF</a>
    </header>

    <section id="cover" class="slide cover-slide">
      <div class="cover-copy">
        <p class="slide-label">Portfolio</p>
        <h1>Saeed Gamal</h1>
        <h2>Media Buyer with a Creative Content Mindset</h2>
        <p class="divider" aria-hidden="true"></p>
        <p class="tagline">Paid Media - Content Strategy - Viral Growth</p>
      </div>
      <img class="cover-photo" :src="heroPhoto" alt="Saeed Gamal" fetchpriority="high" />
      <p class="page-number">01</p>
    </section>

    <section id="about" class="slide split-slide">
      <div class="slide-copy">
        <p class="slide-label">Slide 02</p>
        <h2>About Me</h2>
        <p class="lead">I am a Media Buyer with a creative content mindset.</p>
        <p>
          I combine paid media strategy with a strong understanding of content, hooks, and creative
          direction to build campaigns that reach the right audience and deliver measurable results.
        </p>
      </div>
      <img class="portrait" :src="portraitPhoto" alt="Saeed Gamal portrait" loading="lazy" />
      <p class="page-number">02</p>
    </section>

    <section class="slide skills-slide">
      <div class="slide-heading">
        <p class="slide-label">Slide 03</p>
        <h2>What I Do</h2>
      </div>
      <div class="skill-list">
        <article v-for="skill in skills" :key="skill.title">
          <h3>{{ skill.title }}</h3>
          <p>{{ skill.text }}</p>
        </article>
      </div>
      <p class="page-number">03</p>
    </section>

    <section class="slide result-slide">
      <div>
        <p class="slide-label">Slide 04</p>
        <h2>Media Buying Results</h2>
        <p>
          Selected paid campaign results across different industries, presented with the same clean
          portfolio structure from the PDF.
        </p>
      </div>
      <div class="result-grid" aria-label="Campaign result highlights">
        <strong>Leads</strong>
        <strong>Reach</strong>
        <strong>Testing</strong>
        <strong>Growth</strong>
      </div>
      <p class="page-number">04</p>
    </section>

    <section id="work" class="part-title">
      <p>Part 03</p>
      <h2>Selected Campaign Work</h2>
    </section>

    <section v-for="campaign in campaigns" :key="campaign.title" class="slide campaign-slide">
      <div class="campaign-info">
        <p class="slide-label">Slide {{ campaign.slide }}</p>
        <h2>{{ campaign.title }}</h2>
        <strong>{{ campaign.category }}</strong>
        <p>{{ campaign.text }}</p>
      </div>
      <div class="campaign-spread">
        <img
          v-for="image in campaign.images"
          :key="image"
          :src="image"
          :alt="`${campaign.title} campaign sample`"
          loading="lazy"
        />
      </div>
      <p class="page-number">{{ campaign.slide }}</p>
    </section>

    <section id="contact" class="slide closing-slide">
      <p class="slide-label">Slide 24</p>
      <h2>Thank You</h2>
      <p class="lead">Let's build campaigns and content that make a real impact.</p>
      <div class="contact-card">
        <strong>Saeed Gamal</strong>
        <span>Media Buyer with a Creative Content Mindset</span>
        <a :href="whatsappUrl" target="_blank" rel="noreferrer">Phone: 01146769064</a>
        <a :href="emailUrl">Email: saeedgamal0601@gmail.com</a>
        <a :href="linkedInUrl" target="_blank" rel="noreferrer">LinkedIn: saeedgamal007</a>
      </div>
      <p class="page-number">24</p>
    </section>
  </main>
</template>
