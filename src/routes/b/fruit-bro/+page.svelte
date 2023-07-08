<script lang="ts">
  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";
  import ScrollingImages from "$lib/elem/ScrollingImages.svelte";
</script>

<main>
  <div id="images_container">
    <ScrollingImages />
  </div>

  <div id="content">
    <h1>Made For<br />Fruit Bro</h1>
    <pre>(rip to your wifi after loading all these gifs)</pre>
    <div id="message_container">
      <div id="message">
        <h4>Hi.</h4>
        <p>
          I've been lucky enough to be your friend for a pretty long time, and
          yes, I'm the lucky one, not you. I've said it a thousand times, and
          I'll say it again.
        </p>
        <p>
          Even if people think of me as smart, you're so clever you run circles
          around me without me ever realizing. That's quite something.
        </p>
        <p>
          So maybe I can pay that back. I made this whole website so I can make
          little tributes to my friends- naturally you're the first. Revel in
          this fact :)
        </p>
        <p>
          I have no idea if you think this is cool, or insufferably nerdy.
          Whatever it is, just know I made it hoping you'd smile.
        </p>
        <p>
          Consider this your little internet zone. A webpage dedicated to you,
          and just you. From me.
        </p>
      </div>
    </div>
    <CountDownTimer birthday={"Jun 16"} />
  </div>

  <div id="images_container">
    <ScrollingImages />
  </div>
</main>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Cousine:ital,wght@0,400;0,700;1,400;1,700&display=swap");

  main {
    font-family: "Cousine", monospace;
  }

  #content {
    text-align: center;
  }

  #message_container {
    display: flex;
    justify-content: center;
    align-content: center;
    flex-direction: column;
    flex-wrap: wrap;

    padding: 10px;
  }

  #message {
    max-width: 20em;

    padding: 10px;

    border-radius: 10px;
    border: 2px solid black;

    text-indent: 0.4em;
  }

  #images_container {
    overflow: hidden;
  }

  p {
    margin-top: 3px;
  }
</style>
