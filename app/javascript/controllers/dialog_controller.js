import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dialog"
export default class extends Controller {
  // targets have to be defined as data attribute on the elements data-[controller-name]-target="myTarget" (data attribute targets in camelCase!)
  // and here at targets too - afterwards they can be accessed by this.myTargets (plural), this.myTarget (first of list)
  // see: https://stimulus.hotwired.dev/reference/targets

  // to show a dialog on a page insert the following snippet into the DOM itself or into a turbo_frame when using a turbo_stream response
  // <dialog data-controller="dialog" data-dialog-target="modalToShow" data-no-close="1">YOUR HTML CONTENT HERE</dialog>
  // you can use data-no-close="1" in the dialog element to block the cancel event and not close the dialog when clicking outside of it
  static targets = ['modalToShow']

  // for values usage see: https://stimulus.hotwired.dev/reference/values
  static values = {
    noClose: { type: Boolean, default: false }
  }
  connect() {
    this.modalToShowTarget.showModal()
    // close on click to backdrop
    // based on: https://stackoverflow.com/a/72916231
    if (this.noCloseValue) {
      this.modalToShowTarget.addEventListener('cancel', (event) => {
        event.preventDefault();
      });
    } else {
      this.modalToShowTarget.addEventListener('click', (event) => {
        event.target === this.modalToShowTarget && this.modalToShowTarget.close()
      });
    }
  }

  close() {
    this.modalToShowTarget.close()
  }
}
