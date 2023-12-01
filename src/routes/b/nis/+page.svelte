<script lang="ts">
  import { blur } from "svelte/transition";

  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";

  let generated = false;

  function generate() {
    generated = true;
  }
</script>

<main>
  <h1>Nis</h1>
  <div id="pre-message">
    <p>
      Now, I wasn't sure exactly what to do here. I knew it should be Taylor
      Swift themed, but that felt a little <i>too</i> basic.
    </p>
    <p>
      So instead, I have harnessed my immense programming and artistic skills to
      make an entire <b>1989</b> cover for you..
    </p>
  </div>

  <h2>Behold</h2>

  <div class="album-image">
    <h3>Taylor's Version</h3>
    <img src="/nis/1989_taylor_version.png" alt="1989 Taylor's Version." />
  </div>

  {#if !generated}
    <div id="button-holder">
      <button on:click={generate}><i>NIS</i>IFI</button>
      <p class="n">← <i>click me!</i></p>
    </div>
  {/if}

  {#if generated}
    <div class="album-image" transition:blur={{ duration: 5000 }}>
      <h3>Nis's Version</h3>
      <img src="/nis/1989_nis_version.png" alt="1989 Taylor's Version." />
    </div>
  {/if}

  {#if generated}
    <p>I'd say Nis's Version is pretty good. Maybe even better.</p>
    <hr style="width: 50%;" />
  {/if}

  <div id="message">
    <p>
      Jokes aside, I really am proud to be your brother. Every year we grow
      closer and I cherish every moment of that. Here's to a zillion more years
      of me begging you to make me cookies and you begging me to watch Doctor
      Who with you.
    </p>
  </div>

  <CountDownTimer birthday="Dec 1" />
</main>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Zilla+Slab:ital,wght@0,400;0,700;1,400;1,700&display=swap");

  main {
    text-align: center;
    font-family: "Zilla Slab", serif;
  }

  p:not(.n) {
    max-width: 33em;
    margin: 0 auto;
  }

  .album-image {
    background: #38323b;

    padding: 1em;
    margin: 1em;

    border-radius: 10px;

    text-align: center;
  }

  .album-image img {
    width: 100%;
    border-radius: 10px;
  }

  .album-image h3 {
    margin: 0;
    margin-bottom: 0.5em;

    color: #bdb8bf;
  }

  #button-holder {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  #button-holder p {
    padding: 3px;
    -webkit-user-select: none;
    user-select: none;

    cursor: default;
  }

  button {
    width: 40%;

    border-radius: 5px;

    font-size: 2em;

    border: 2px solid #5993a8;
    background: #18556b;
    color: white;

    cursor: pointer;
  }

  #message {
    margin: 2em;
  }
</style>
