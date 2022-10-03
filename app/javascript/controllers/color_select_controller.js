import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["select", "images"]

  connect() {
    this.selectTarget.childNodes[3].addEventListener("change", (e) => this.onChangeHandler(e, this.imagesTarget));
  }

  disconnect() {
    this.selectTarget.childNodes[3].removeEventListener("change", (e) => this.onChangeHandler(e, this.imagesTarget));
  }

  onChangeHandler(e, images) {
    this.imagesTarget.querySelectorAll('img').forEach(image => {
      if (e.target.value.toLowerCase() == image.id) {
        this.showImage(image.id, images);
        this.hideImages(image.id, images);
        this.imagesTarget.querySelector("#"+image.id).classList.remove("hidden")
      }
    })
  };

  showImage(imageId, images) {
    images.querySelector("#"+imageId).classList.remove("hidden")
  }

  hideImages(imageId, images) {
    images.querySelectorAll('img:not([id*='+imageId+'])').forEach(image => {
      image.classList.add("hidden")
    })
  }
}