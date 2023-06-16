<script lang="ts">
  let gifs = [
    "https://media.tenor.com/GmAoEwcSDYgAAAAC/letter-e.gif",
    "https://media.tenor.com/3e367oeQvBIAAAAd/rainbow-stickman.gif",
    "https://media.tenor.com/XwDwRP--UAIAAAAS/doctor-david-livesey-david-livesey.gif",
    "https://media.tenor.com/9xoHlz_ibSwAAAAC/yay-snoopy.gif",
    "https://media.tenor.com/soiGq02-PHUAAAAC/cheese-james-may.gif",
    "https://media.tenor.com/RhaWlBQhFZQAAAAC/smash.gif",
    "https://media.tenor.com/0XYRdBVKZQgAAAAC/anime-finger-gun.gif",
    "https://media.tenor.com/95BDycel5VsAAAAd/pause-blue-emoji-meme.gif",
    "https://media.tenor.com/PoBNrF0XWi0AAAAC/meme-lang.gif",
    "https://media.tenor.com/7IaHKG4cnSwAAAAd/happy-birthday-the-office.gif",
    "https://media.tenor.com/3qD2vVScav8AAAAC/emoji.gif",
    "https://media.tenor.com/W3CQBL__PQkAAAAC/ethan-look-at-him-go.gif",
    "https://cdn.discordapp.com/emojis/859857052430761984.gif",
    "https://media.tenor.com/lqdVOKiQPQgAAAAd/promoted-discord-mod.gif",
    "https://media.tenor.com/MvvXjGVrnMQAAAAC/dancing-unicorn-unicorn.gif",
    "https://media.tenor.com/YS_3Ce0xQZUAAAAC/kid-dance.gif",
    "https://media.tenor.com/N5_1qjzTPe4AAAAC/party-hard-kid.gif",
  ];

  shuffleArray(gifs);

  setInterval(() => {
    shuffleArray(gifs);
    gifs = gifs;
  }, 5000);

  // from https://stackoverflow.com/questions/2450954/how-to-randomize-shuffle-a-javascript-array
  function shuffleArray(array: any[]) {
    for (var i = array.length - 1; i > 0; i--) {
      var j = Math.floor(Math.random() * (i + 1));
      var temp = array[i];
      array[i] = array[j];
      array[j] = temp;
    }
  }
</script>

<main>
  <div id="gifs">
    {#each gifs as gif}
      <img src={gif} alt="gif" />
    {/each}
  </div>
</main>

<style>
  #gifs {
    overflow: hidden;
    white-space: nowrap;

    display: flex;
    justify-content: space-between;
  }

  #gifs img {
    overflow: hidden;

    min-width: 4em;
    width: 4em;

    min-height: 5em;
    height: 5em;
  }
</style>
