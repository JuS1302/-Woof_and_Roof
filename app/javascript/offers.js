// app/assets/javascripts/offers.js
document.addEventListener("DOMContentLoaded", function() {
  var stickyBooking = document.querySelector('.sticky-booking-container');
  var offsetTop = stickyBooking.offsetTop;

  window.addEventListener('scroll', function() {
    if (window.scrollY > offsetTop) {
      stickyBooking.classList.add('is-sticky');
    } else {
      stickyBooking.classList.remove('is-sticky');
    }
  });
});
