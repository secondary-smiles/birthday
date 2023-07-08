<script lang="ts">
  let input: string;

  let errorText = "";
  let error = true;

  let p: any;

  async function getPokemon() {
    const res = await fetch(
      `https://pokeapi.co/api/v2/pokemon/${input.toLowerCase()}`
    );

    if (!res.ok) {
      error = true;
      errorText = input;
      return;
    }

    p = await res.json();
    console.log(p);

    error = false;
  }
</script>

<main>
  <form>
    <input bind:value={input} type="text" />
    <button on:click={getPokemon}>search!</button>
  </form>
  {#if input && error}
    <p>'{errorText}' is not a valid pokemon!</p>
  {:else if error}
    <span />
  {:else}
    <div id="display">
      <h1>Results</h1>

      <h2>{`${p.name.charAt(0).toUpperCase()}${p.name.substring(1)}`}</h2>

      <div id="imgs">
        <img src={p.sprites.front_default} alt="pokemon front" />
        <img src={p.sprites.back_default} alt="pokemon back" />
      </div>

      <div id="stats">
        <h3>Stats</h3>
        <ul>
          <li><b>height:</b> {p.height}</li>
          <li><b>weight:</b> {p.weight}</li>
          {#each p.stats as stat}
            <li><b>{stat.stat.name}:</b> {stat.base_stat}</li>
          {/each}
        </ul>
      </div>
    </div>
  {/if}
  <div />
</main>

<style>
	form {
  	padding: 5px;
	}
  
  h1,
  h2,
  h3 {
    text-align: center;
  }

  h1,
  h2,
  h3,
  ul {
    margin: 0;
  }

  img {
    width: 100%;
  }

  #imgs {
    display: flex;
    justify-content: space-evenly;
  }

  #display {
    border-radius: 10px;
    border: 3px solid black;

    animation-name: lsd;
    animation-duration: 0.8s;
    animation-iteration-count: infinite;
  }

  @keyframes lsd {
    from {
      filter: hue-rotate(0deg);
    }

    to {
      filter: hue-rotate(359deg);
    }
  }
</style>
