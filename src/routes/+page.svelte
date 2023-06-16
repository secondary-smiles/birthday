<script lang="ts">
  const links = ["/b/fruit-bro"];
</script>

<main>
  <h1>Birthdays</h1>

  <div id="links">
    <ul>
      {#each links as link}
        <li>
          <p>
            <a href={link}>{link}</a>
          </p>
        </li>
      {/each}
    </ul>
  </div>
</main>

<style>
  main {
    display: flex;
    justify-content: center;
    align-content: center;
    flex-direction: column;
    flex-wrap: wrap;
  }
</style>
