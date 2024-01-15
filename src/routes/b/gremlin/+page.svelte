<script lang="ts">
  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";
</script>

<main>
  <div id="message">
    <p><b>Hi Gremlin</b></p>

    <p>
      I'll keep this brief because I know it's interrupting your view of the
      turtle.
    </p>

    <p>In short,</p>

    <ul>
      <li>You mean very much to me.</li>
      <li>You're pretty damn cool.</li>
      <li>I'm so lucky to know you.</li>
    </ul>

    <p>Anyways, to the real main part of this page..</p>
  </div>

  <div id="turtleview">
    <h2>Base version</h2>
    <img
      src="https://i.imgur.com/onxW5IH.gif"
      alt="a turtle dancing under a faucet."
    />

    <h2>Rave version</h2>
    <img
      id="rave-turtle"
      src="https://i.imgur.com/onxW5IH.gif"
      alt="a turtle dancing under a faucet."
    />

    <p>
      I know there's not much difference, but then again who's telling turtles
      apart anyways?
    </p>
  </div>

  <p id="fun">Happy birthday Gremlin</p>

  <CountDownTimer birthday="Jan 15" />
</main>

<style>
  main {
    font-family: sans-serif;
  }

  img {
    width: 100%;
  }

  #rave-turtle {
    filter: saturate(4);

    animation: rave 1s linear infinite;
  }

  #fun {
    display: inline-block;
  position: relative;
  }

  #fun::before {
    content: "";

    color: white;

    background: linear-gradient(284deg, #e1ad2b, #8bc5d2, #d28bb9);
    background-size: 600% 600%;

    animation: slide 2s linear infinite;

    width: 100%;
    height: 1em;

    padding: 1px;

    position: absolute;
    bottom: 0;

    left: 0;
    right: 0;

    z-index: -1;

    filter: blur(25px);
  }

  @keyframes rave {
    from {
      filter: hue-rotate(0deg);
    }

    to {
      filter: hue-rotate(360deg);
    }
  }

  @keyframes slide {
    0% {
      background-position: 0% 50%;
    }

    50% {
      background-position: 100% 50%;
    }

    100% {
      background-position: 0% 50%;
    }
  }
</style>
