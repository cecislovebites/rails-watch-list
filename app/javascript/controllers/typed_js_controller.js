import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
    strings: ["Find your perfect film to watch"],
    typeSpeed: 60,
    loop: true,
    loopCount: Infinity,
    showCursor: false
    })
  }
}
