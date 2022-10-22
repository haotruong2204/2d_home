import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  close(event) {
    let main = document.getElementById('toast');
    
    main.removeChild(event.target.parentNode.parentNode)
  }
}
