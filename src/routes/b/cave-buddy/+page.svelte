<script lang="ts">
  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";

  let buttonCounter = 0;
</script>

<main>
  <div id="content">
    <h1>Happy birthday!</h1>
    <h2>I know you're not very into tech, so here's a picture of a tree:</h2>

    <img
      src="https://images.pexels.com/photos/1067333/pexels-photo-1067333.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
      alt="a tree"
    />

    <p class="subtext">hopefully that makes it all ok</p>

    <h3>But,</h3>
    <h4>Here's something a tree can't do</h4>
    <button
      on:click={() => {
        buttonCounter++;
      }}
      >{buttonCounter < 1
        ? "click me"
        : buttonCounter < 3
        ? "again!"
        : "oops"}</button
    >
    <p>i have been clicked {buttonCounter < 2 ? buttonCounter : 2} times</p>
    {#if buttonCounter > 2}
      <p class="subtext">
        (i haven't figured out how to make it go above 2, sorry)
      </p>
      <h3>well, maybe tech isn't good for everything</h3>
    {/if}

    <div id="pagebreak" />

    <div id="message">
      <p>well anyways, happy birthday again</p>
      <p>
        I hope you have an amazing year going forwards and that college treats
        you well. I'm so damn lucky to have a friend as cool as you.
      </p>

      <p>Here's to an ocean kayak trip in the near future!</p>
      <p>(plus, you'll always be my cave buddy)</p>
    </div>
  </div>

  <CountDownTimer birthday="Jul 24" />
</main>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Wix+Madefor+Text&display=swap");

  main {
    font-family: "Wix Madefor Text", sans-serif;
  }

  img {
    max-width: 15em;
  }

  #pagebreak {
    height: 30vh;
  }

  #content {
    text-align: center;
  }

  #message {
    max-width: 15em;
    margin: 0 auto;
  }

  .subtext {
    color: grey;
  }
</style>
