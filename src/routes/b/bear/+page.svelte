<script lang="ts">
  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";
  import PokeDeck from "$lib/elem/PokeDeck.svelte";
</script>

<main>
  <div id="message">
    <h4>Hey</h4>
    <p>
      Whether it be swords, pokemon, or something even cooler, you've always got
      your fingers in something.
    </p>
    <p>
      Now I know I can be condescending sometimes, but I really do love you, and
      since this webpage is all about you, Let's see if I'm able to get even
      close to how cool you are.
    </p>

    <p>soooo...</p>
    <p>
      I'm harnessing my programming skills to make a pokemon thingy for you,
      hopefully it's cool enough to let me be a cool kid like you
    </p>
  </div>

  <PokeDeck />

  <CountDownTimer birthday={"July 8"} />
</main>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap");

  main {
    font-family: "Press Start 2P", sans-serif;

    animation-name: spin;
    animation-duration: 1000s;
    animation-iteration-count: infinite;
  }

  #message {
    max-width: 25em;
  }

  @keyframes spin {
    from {
      transform: rotate(0deg);
    }

    to {
      transform: rotate(359deg);
    }
  }
</style>
