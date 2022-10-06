import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    let canvas = new fabric.Canvas('custom-text-canvas');

    document.getElementById("custom_product_right_sleeve").addEventListener("input", (e) => {
      let text = new fabric.Text(e.target.value, {
        fill: 'white'
      });

      canvas.add(text);
    }, false);

    document.addEventListener("keydown", (e) => {
      if (e.key == "Delete") {
        console.log("Removing selected element on Fabric.js on DELETE key !");
        canvas.remove(canvas.getActiveObject());
      }
    }, false);

  }
}
