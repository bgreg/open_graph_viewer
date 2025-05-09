import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// to use this fade feature you need to add a 'data-flash' attribute to the element you want to fade
document.addEventListener("turbo:submit-end", () => {
  const fadeAndRemove = (el) => {
    el.style.transition = "opacity 1s ease-out";
    el.style.opacity = "0";
    setTimeout(() => el.remove(), 1000); // wait for transition
  };

  setTimeout(() => { document.querySelectorAll("[data-flash]").forEach(fadeAndRemove); }, 3000);
});
