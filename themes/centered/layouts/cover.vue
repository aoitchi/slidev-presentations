<script setup lang="ts">
import DefaultCover from '@slidev/theme-default/layouts/cover.vue'
</script>

<template>
  <DefaultCover class="flex flex-col [&>h1]:shrink-0 [&_h1]:!text-4xl [&_h1]:!leading-tight [&_.mermaid]:flex [&_.mermaid]:justify-center">
    <div class="text-center">
      <slot />
    </div>
  </DefaultCover>
</template>
