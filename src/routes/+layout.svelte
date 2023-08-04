<script lang="ts">
  import "./app.css";
</script>

<main>
  <a href="/">home</a>
  <slot />
  <hr />
  <pre>trinket</pre>
</main>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Lisu+Bosa&family=Major+Mono+Display&family=Noto+Serif+Vithkuqi&family=Roboto+Mono&family=Vina+Sans&display=swap");

  pre {
    animation-name: fontChange;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }

  @keyframes fontChange {
    0% {
      font-family: "Noto Serif Vithkuqi", monospace;
    }
    20% {
      font-family: "Noto Serif Vithkuqi", cursive;
    }
    40% {
      font-family: "Roboto Mono", monospace;
    }
    60% {
      font-family: "Ranchers", cursive;
    }
    80% {
      font-family: "Vina Sans", cursive;
    }
    100% {
      font-family: "Major Mono Display", monospace;
    }
  }
</style>
