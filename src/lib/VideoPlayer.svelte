<script lang="ts">
  export let src: string;
  let videoRef: HTMLVideoElement | null = null;
  let isPlaying = false;

  function playVideo() {
    if (videoRef) {
      videoRef.play();
      isPlaying = true;
    }
  }
  function handlePause() {
    isPlaying = false;
  }
  function handlePlay() {
    isPlaying = true;
  }
</script>

<div class="video-container">
  <video
    class="rounded"
    bind:this={videoRef}
    controls
    muted
    on:pause={handlePause}
    on:play={handlePlay}
  >
    <source src={src} type="video/mp4" />
    Your browser does not support the video tag.
  </video>
  {#if !isPlaying}
    <button class="play-overlay" on:click={playVideo} aria-label="Play video">
      <svg width="64" height="64" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="32" cy="32" r="32" fill="rgba(0,0,0,0.5)"/>
        <polygon points="26,20 50,32 26,44" fill="#fff"/>
      </svg>
    </button>
  {/if}
</div>

<style>
video {
  display: block;
  width: 100%;
  margin: 1em auto;
  max-height: 95dvh;
}
.video-container {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
}
.play-overlay {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background: none;
  border: none;
  cursor: pointer;
  padding: 0;
  z-index: 2;
}
.play-overlay svg {
  display: block;
}
.video-container video.rounded {
  display: block;
}
</style>
