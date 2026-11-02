<script setup lang="ts">
defineProps({
  contentClass: {
    type: String,
    default: '',
  },
})
</script>

<template>
  <div class="slidev-layout default flex flex-col [&>h1]:shrink-0 [&_h1]:!text-4xl [&_h1]:!leading-tight [&_.mermaid]:flex [&_.mermaid]:justify-center">
    <slot />
    <div class="flex-1 min-h-0 flex flex-col justify-center" :class="contentClass">
      <slot name="content" />
    </div>
  </div>
</template>
