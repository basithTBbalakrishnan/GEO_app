import { Controller } from "@hotwired/stimulus";
import L from "leaflet";

export default class extends Controller {
  static targets = ["map"];

  connect() {
    const wellKnownText = this.data.get("well-known-text");
    
    const map = L.map(this.element).setView([51.505, -0.09], 13);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

  }
}
