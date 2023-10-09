import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash-message"
export default class extends Controller {
  // see: https://stimulus.hotwired.dev/reference/values
  static values = {
    persistent: { type: Boolean, default: false },
    hideAfter: { type: Number, default: 5_000 },
  }
  connect() {
    // do not auto hide a flash message if it is a persistent message
    if (this.persistentValue) return

    // hide the flash message after the configured number of milliseconds
    // see config/application.rb => config.x.flash_duration for the default value
    setTimeout(
      () => {
        this.element.click()
      },
      parseInt(this.hideAfterValue))
  }
}
