import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="confirmation"
export default class extends Controller {
  static targets = ["status", "confirm", "deny"]

  connect() {
    console.log("halooo")
  }

  confirmed(event) {
    event.preventDefault();

    fetch(this.confirmedFormTarget.action, {
      method: "PATCH",
      headers: { "Accept": "application/json" },
      body: new FormData(this.confirmedFormTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
}

  denied(event) {
    event.preventDefault();

    fetch(this.declineFormTarget.action, {
      method: "PATCH",
      headers: { "Accept": "application/json" },
      body: new FormData(this.declineFormTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }
}
