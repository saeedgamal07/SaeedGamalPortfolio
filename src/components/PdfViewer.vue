<script setup>
import { ref, watch } from 'vue'

const props = defineProps({
  src: {
    type: String,
    required: true,
  },
  title: {
    type: String,
    default: 'PDF document',
  },
})

const emit = defineEmits(['close'])
const isLoading = ref(true)

watch(
  () => props.src,
  () => {
    isLoading.value = true
  },
)
</script>

<template>
  <section class="pdf-viewer" :aria-busy="isLoading ? 'true' : 'false'">
    <div class="pdf-viewer__toolbar">
      <h1>{{ title }}</h1>
      <button type="button" @click="emit('close')">Close</button>
    </div>

    <div class="pdf-viewer__frame-wrap">
      <div v-if="isLoading" class="pdf-viewer__loading" role="status">
        <span class="pdf-viewer__spinner" aria-hidden="true"></span>
        <span>Loading portfolio PDF...</span>
      </div>

      <iframe
        class="pdf-viewer__frame"
        :src="src"
        :title="title"
        loading="eager"
        @load="isLoading = false"
      ></iframe>
    </div>
  </section>
</template>
