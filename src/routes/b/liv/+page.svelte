<script lang="ts">
  import CountDownTimer from "$lib/elem/CountDownTimer.svelte";
  import PageView from "$lib/elem/PageView.svelte";
</script>

<main>
  <h1>Happy Birthday!</h1>

  <p>I'm not sure what to put here, so maybe I'll put a few memories</p>

  <div id="exhibits">
    <PageView>
      <h2>Exhibit A</h2>
      <img src="/liv/goldfish.png" alt="goldfish cracker" />
      <blockquote>
        this is a big fucking goldfish, you could probably take a nap on it and
        when you wake up, just start munching away
      </blockquote>
    </PageView>

    <PageView>
      <h2>Exhibit B</h2>
      <img
        src="/liv/paranormal-activities_poster.jpg"
        alt="movie poster for Paranormal Activities"
      />
      <blockquote>
        a really bad movie - well, maybe it's just me. <br />
        at least i had a good time watching it
      </blockquote>
    </PageView>

    <PageView>
      <h2>Exhibit C</h2>
      <img src="/liv/nails.jpeg" alt="nails with acrylics" />
      <blockquote>the bane of my existence, aka the tickle 3000s</blockquote>
    </PageView>
  </div>

  <div id="message">
    <p>
      Well, that's enough memories for now. Especially since it's your birthday.
      That means like, a whole entire year has gone bye since you were younger.
    </p>
    <p>
      There's so much to say, but honestly, I'm sure you don't need me, of all
      people telling it to you.
    </p>
    <p><b>Anyways</b></p>
    <p>
      Goodness knows you've been looking at this shitty site long enough, go
      enjoy your special day and say hi to your lovely mom and grandparents for
      me.
    </p>
  </div>

  <CountDownTimer birthday={"Aug 4"} />
</main>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Edu+SA+Beginner:wght@400;700&display=swap");

  main {
    font-family: "Edu SA Beginner", cursive;

    text-align: center;

    background: pink;
  }

  img {
    max-width: 80%;
  }

  blockquote {
    color: grey;
    size: 0.7rem;

    font-style: italic;
  }
</style>
