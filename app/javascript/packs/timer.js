bikeRaceDate = new Date("April 1, 2021 00:00:00").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = bikeRaceDate - now;

  // Time calculations for days, hours, minutes and seconds
  
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  
  document.getElementById("race-date").innerHTML = "<h1>" + days + " days: " + hours + " hours: "
  + minutes + " minutes: "  + seconds + " seconds.</h1>";

  // If the count down is finished, write some text
  if (distance < 0 ) {
    clearInterval(x);
    document.getElementById("race-date").innerHTML = "It's done. Check back soon for details of next race.";
  }
}, 1000);

