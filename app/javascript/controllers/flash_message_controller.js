import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash-message"
export default class extends Controller {
  connect() {
    // do not auto hide a flash message if it is a persistent message
    if (typeof(this.element.dataset.persistentMessage) !== 'undefined' && this.element.dataset.persistentMessage === "1") return

    // hide the flash message after the configured number of milliseconds
    // see config/application.rb => config.x.flash_duration for the default value
    setTimeout(() => {
      this.element.click()
    },
    parseInt(this.element.dataset.hideAfterMs))
  }
}
