import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["items", "form"]
  static values = { position: String }
  send(event) {
    event.preventDefault();

    // Send an AJAX Request, and deal with the response
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { Accept: "application/json" },
      body: new FormData(this.formTarget),
    })
    .then((response) => response.json())
    .then((data) => {
      this.formTarget.outerHTML = data.form
      if (data.inserted_item) {
        this.itemsTarget.insertAdjacentHTML(this.positionValue, data.inserted_item)
      }
    });
  }
}
