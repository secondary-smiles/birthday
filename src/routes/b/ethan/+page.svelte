<script lang="ts">
  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";
  import { metaphone } from "metaphone-ts";

  let sounds = [
    "B",
    "X",
    "S",
    "K",
    "J",
    "T",
    "F",
    "H",
    "L",
    "M",
    "N",
    "P",
    "R",
    "0",
    "W",
    "Y",
  ];

  let custom_message = "";

  let message =
    "Happy birthday Ethan! You are easily one of the closest friends I've ever had, and it's not even close. I've never met someone who's so willing to be goofy and crazy with me, but also has the capacity to be so serious when needed. I appreciate you as a friend and also just as a human on this planet. You make a difference in my life, so I'm sure you do for other people as well.";

  let played_words: string[] = [];
  let playing = false;
  let playing_message = "";
  let stop = false;
  async function playAudio(message: string) {
    playing_message = message;
    playing = true;
    played_words = [];
    let words = message.split(" ");
    for (const word of words) {
      played_words.push(word);
      played_words = played_words;
      let phonemes = metaphone(word);
      for (const phoneme of phonemes) {
        let audio = document.querySelector(`#audio-${phoneme}`);
        if (audio) {
          audio.play();
          await new Promise((r) => setTimeout(r, audio.duration * 1000 - 100));
        }
        if (stop) {
          playing = false;
          stop = false;
          return;
        }
      }
      await new Promise((r) => setTimeout(r, Math.min(word.length * 50, 300)));
    }
    playing = false;
  }
</script>

<main>
  <div id="content">
    <div id="audio">
      {#each sounds as sound}
        <audio id="audio-{sound}" src="/ethan/{sound}.mp3"></audio>
      {/each}
    </div>

    <div id="message">
      <h1>Hi Ethan!</h1>

      <p>
        Do you remember that one time I was working on a procedural voices
        algorithm for a game project? Well, the game isn't finished and neither
        is the voice algorithm but ¯\_(ツ)_/¯.
      </p>
      <p>
        Anyways, you helped me create a voice using your samples, so I thought
        it would be fun to steal those and make you read your birthday message
        to yourself!
      </p>
    </div>

    <div id="automessage">
      <button disabled={playing} on:click={() => playAudio(message)}
        >Play</button
      >
      <button
        disabled={!playing}
        on:click={() => {
          stop = true;
        }}>Stop</button
      >
      <p>
        {#each message.split(" ") as word, i}
          {#if played_words.length >= i + 1 && playing_message == message}
            <span class="played">
              {word + " "}
            </span>
          {:else}
            {word + " "}
          {/if}
        {/each}
      </p>
    </div>

    <h2>Write your own message if you want!</h2>

    <div id="custommessage">
      <form
        on:submit|preventDefault={() => {
          playAudio(custom_message);
        }}
      >
        <input placeholder="custom mesage.." bind:value={custom_message} />
        <button disabled={playing}>Play</button>
        <button
          type="button"
          disabled={!playing}
          on:click={() => {
            stop = true;
          }}>Stop</button
        >
      </form>
      <p>
        {#each custom_message.split(" ") as word, i}
          {#if played_words.length >= i + 1 && playing_message == custom_message}
            <span class="played">
              {word + " "}
            </span>
          {:else}
            {word + " "}
          {/if}
        {/each}
      </p>
    </div>
    <CountDownTimer birthday={"Mar 25"} />
  </div>
</main>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");

  main {
    font-family: "Fira Sans", sans-serif;
    font-weight: 400;
    font-style: normal;

    display: flex;
    justify-content: center;
  }
  #content {
    max-width: 40em;
  }

  .played {
    color: cyan;
  }
</style>
