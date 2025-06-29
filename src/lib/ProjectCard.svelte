<script lang="ts">
  import VideoPlayer from "./VideoPlayer.svelte";

  export let title: string;
  export let description: string;
  export let link: string = ""; // main project link
  export let repo: string = ""; // repo link
  export let demoUrl: string = ""; // iframe demo url
  export let demoVideo: string = ""; // video src

  let isDemoOn = false;
</script>

<div class="card rounded padding">
  <div class="reverse golden columns desktop">
    <div class="vertical-space-evenly">
      <h2 class="text-center">{title}</h2>
      <p>{description}</p>
      <div class="media-content hide desktop tablet">
        {#if demoUrl}
          <em class="block text-center">Try me below! 
            {#if link}
              <a target="_blank" href={link}>Or, open in new tab.</a>
            {/if}
          </em>
        {:else if demoVideo}
          <em class="block text-center">Quick demo below!</em>
        {/if}
        {#if demoUrl && isDemoOn}
          <iframe class="rounded" src={demoUrl} title="Demo"></iframe>
        {/if}
        {#if demoVideo && !isDemoOn}
          <VideoPlayer src={demoVideo} />
        {/if}
      </div>
      <div class="text-center space-evenly margin-bottom">
        {#if demoUrl && demoVideo}
          {#if isDemoOn}
            <button class="blue" on:click={() => (isDemoOn = false)}>Show Video</button>
          {:else}
            <button class="blue" on:click={() => (isDemoOn = true)}>Try it live</button>
          {/if}
        {/if}
        {#if link && !demoUrl}
          <a target="_blank" href={link} class="blue button no-underline">Try it</a>
        {/if}
        {#if repo}
          <a target="_blank" href={repo} class="blue button no-underline">Explore Code</a>
        {/if}
      </div>
      <slot name="footer" />
      <div class="hide mobile">
        {#if demoUrl}
          <em class="block text-center">Try me! 
            {#if link}
              <a target="_blank" href={link}>Or, open in new tab.</a>
            {/if}
          </em>
        {:else if demoVideo}
          <em class="block text-center">Quick demo on the right!</em>
        {/if}
      </div>
    </div>
    <div class="hide mobile">
      <div class="media-content">
        {#if demoUrl && isDemoOn}
          <iframe class="rounded" src={demoUrl} title="Demo"></iframe>
        {/if}
        {#if demoVideo && !isDemoOn}
          <VideoPlayer src={demoVideo} />
        {/if}
      </div>
    </div>
  </div>
</div>

<style>
iframe {
  display: block;
  width: 100%;
  margin: 1em auto;
  max-height: 95dvh;
  height: 650px;
}
</style>
