<script>
  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";

  const valueMap = {
    32: ["Woah, my water is frozen.", "[ded]"],
    40: ["Alright, I should get another sweater.", "[teeth chattering]"],
    50: ["Ok, this is kinda chilly.", "Can I get frostbite from this?"],
    60: ["I don't mind this at all.", "I think I need to get some more layers."],
    70: ["This is pretty nice!", "Eh, could be warmer."],
    80: ["I do not like this.", "Finally, some summer warmth."],
    90: ["My face is MELTING OFF!", "I guess I should turn the fan on now."],
    100: ["[dead]", "Wow, it's kinda hot."],
    110: ["[literally ashes]", "Wow I actually sweated a bit."],
    120: ["[..dead..]", "Now *this* is hot!"],
    212: ["WHY MY WATER HAS BUBBLES?!", "It's boiling."]
  }

  let value = 70;
  let closest = 70;

  $: {
    closest = Object.keys(valueMap).reduce((prev, curr) => {
      return (Math.abs(Number(curr) - Number(value)) < Math.abs(Number(prev) - Number(value)) ? Number(curr) : Number(prev))
   });
  }
</script>

<main>
  <div id="main">
    <div id="message">
      <h1>Hey</h1>
      <p>So I was thinking about what the best way to design this page would be, and honestly it wasn't very difficult. <b>Hopefully you like it.</b></p>

      <h2>I present to you..<h2>

    </div>
    <div id="game">
      <h1 class="title">The Temperature Slider - {value}°F</h1>
      <div class="slider-container">
        <input bind:value={value} type="range" min="32" max="212" class="slider" id="range">
      </div>
      <div id="columns-wrap">
        <div id="columns">
          <div id="col-1">
            <h3>I would say..</h3>
            <p class="dialogue">{valueMap[closest][0]}</p>
          </div>
          <div id="col-2">
            <h3>You would say..</h3>
            <p class="dialogue">{valueMap[closest][1]}</p>
          </div>
        </div>
      </div>

    </div>
    <p><b>Well, that's kinda fun.</b>
          <br>
          I hope you like it, but mostly I hope you have a great birthday. We only get them once a year, so here's my contribution towards making this the best one yet.
          <br>
          I hope it helps.
    </p>
    <CountDownTimer birthday={"Jul 17"} />
  </div>
</main>

<style>
  @import url('https://fonts.googleapis.com/css2?family=PT+Serif:ital,wght@0,400;0,700;1,400;1,700&display=swap');
  main {
    font-family: "PT Serif", serif;
    padding: 10px;
    display: flex;
    justify-content:  center;
    background: lavender;
    color: black;
  }
  #main {
    max-width: 80ch;
  }
  
  h1 {
    margin-bottom: 0;
    padding-bottom: 1em;
  }

  #game {
    border-radius: 2em;
    box-shadow: 5px 5px 50px #0000000f;
    padding: 1em;
  }

  .title {
    text-align:  center;
  }
  
  .slider-container {
    width: 100%;
  }

  .slider {
    -webkit-appearance: none;  
    width: 100%;
    height: 1em;
    border-radius: 999px;

    background: linear-gradient(90deg, #0000ff, #ff0000);
  }

  #columns-wrap {
    display: flex;
    justify-content: center;
  }

  #columns {
    display: grid;
    grid-template-columns: auto auto;
  }

  #col-1, #col-2 {
    margin: 1em;
    max-width: 12em;
  }

  .dialogue {
    font-style:  italic;
  }
  .dialogue::before {
    content: '"';
  }
  .dialogue::after {
    content: '"';
  }
</style>
