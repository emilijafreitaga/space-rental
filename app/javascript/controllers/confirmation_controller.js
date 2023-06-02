import { Controller } from "@hotwired/stimulus"
import Rails from "rails-ujs"

// Connects to data-controller="confirmation"
export default class extends Controller {
  static targets = ["confirm", "deny"]

  connect() {
    console.log("halooo")
  }

  confirm(event) {
    event.preventDefault();
    console.log("confirm")

    const confirmStatus = parseInt(this.confirmTarget.dataset.confirm, 10);

    const bookingId = this.confirmTarget.dataset.bookingId

    fetch(`/bookings/${bookingId}/brequest`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": Rails.csrfToken(),
      },
      body: JSON.stringify({
        booking: { confirmed: confirmStatus }
      })
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })

      this.element.innerHTML = '<p class="card-text">This is confirmed <i class="fa-solid fa-check"></i></p>'
}

  deny(event) {
    event.preventDefault();
    console.log("deny")

    const confirmStatus = parseInt(this.denyTarget.dataset.deny, 10);

    const bookingId = this.denyTarget.dataset.bookingId

    fetch(`/bookings/${bookingId}/brequest`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": Rails.csrfToken(),
      },
      body: JSON.stringify({
        booking: { confirmed: confirmStatus }
      })
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })

      this.element.innerHTML = '<p class="card-text">Cancelled <i class="fa-solid fa-check"></i></p>'
  }
}
