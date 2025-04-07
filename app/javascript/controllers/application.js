import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }


document.addEventListener("turbo:submit-end", function() {
  setTimeout(function() {
    const notice = document.getElementById("flash-notice");
    if (notice) {
      notice.style.transition = "opacity 1s ease-out";
      notice.style.opacity = "0";
      setTimeout(() => notice.remove(), 1000);
    }
  }, 3000); // 3 seconds delay

  setTimeout(function() {
    const alert = document.getElementById("flash-alert");
    if (alert) {
      alert.style.transition = "opacity 1s ease-out";
      alert.style.opacity = "0";
      setTimeout(() => alert.remove(), 1000);
    }
  }, 3000); // 3 seconds delay
});
