<script lang="ts">
  export let birthday: string;

  let year = new Date().getFullYear();
  if (new Date(`${birthday}, ${year}, 00:00:00`) < new Date()) year++;

  const countdownDate = new Date(`${birthday}, ${year} 00:00:00`);

  let months = 0;
  let weeks = 0;
  let days = 0;
  let hours = 0;
  let minutes = 0;
  let seconds = 0;
  let milliseconds = 0;

  setInterval(() => {
    milliseconds = countdownDate.getTime() - new Date().getTime();
    seconds = Math.floor(milliseconds / 1000);
    minutes = Math.ceil(seconds / 60);
    hours = Number.parseFloat((minutes / 60).toFixed(2));
    days = Math.floor(hours / 24);
    weeks = Math.floor(days / 7);
    months = Math.ceil(weeks / 4.345);
  }, 1);
</script>

<div>
  <pre>{months} month{months == 1 ? "" : "s"} until {birthday}, {year}</pre>
  <pre>{weeks} week{weeks == 1 ? "" : "s"} until {birthday}, {year}</pre>
  <pre>{days} day{days == 1 ? "" : "s"} until {birthday}, {year}</pre>
  <pre>{hours} hour{hours == 1 ? "" : "s"} until {birthday}, {year}</pre>
  <pre>{minutes} minute{minutes == 1 ? "" : "s"} until {birthday}, {year}</pre>
  <pre>{seconds} second{seconds == 1 ? "" : "s"} until {birthday}, {year}</pre>
  <pre>{milliseconds} millisecond{milliseconds == 1
      ? ""
      : "s"} until {birthday}, {year}</pre>
</div>

<style>
  div {
    margin: 10px 0;
  }

  pre {
    margin: 0;
  }
</style>
