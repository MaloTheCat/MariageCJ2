const deadline = new Date("Jul 10, 2021 20:00:00").getTime();
const initCountdown = () => {
  setInterval(function() {
    let now = new Date().getTime();
    let timeleft = deadline - now;

    let days = Math.floor(timeleft / (1000 * 60 * 60 * 24));
    // let hours = Math.floor ((timeleft % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    // let minutes = Math.floor ((timeleft % (1000 * 60 * 60)) / (1000 * 60));
    // let seconds = Math.floor ((timeleft % (1000 * 60)) / 1000);
    console.log(document.getElementById('days').innerHTML);
    document.getElementById('days').innerHTML = days
    if (timeleft < 0) {
      clearInterval(refresh);
      document.getElementById('days').innerHTML = "";
      document.getElementById('end').innerHTML = "Aujourd'hui !";
    }
  }, 5000);
}

export { initCountdown };

// -----------

// const deadline = new Date("Jul 10, 2021 20:00:00").getTime();
// const initCountdown = () => {
//   let now = new Date().getTime();
//   let timeleft = deadline - now;

//   let days = Math.floor(timeleft / (1000 * 60 * 60 * 24));

//   // let hours = Math.floor ((timeleft % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
//   // let minutes = Math.floor ((timeleft % (1000 * 60 * 60)) / (1000 * 60));
//   // let seconds = Math.floor ((timeleft % (1000 * 60)) / 1000);

//   document.getElementById('days').innerHTML = days
//   if (timeleft < 0) {
//     clearInterval(refresh);
//     document.getElementById('days').innerHTML = "";
//     document.getElementById('end').innerHTML = "Aujourd'hui !";
//   }
//   setTimeout(initCountdown, 5000)
// }

// export { initCountdown };
