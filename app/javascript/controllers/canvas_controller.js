import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    let canvas = new fabric.Canvas('custom-product-canvas');

    document.getElementById("custom_product_color").addEventListener("change", (e) => {
      document.getElementById("tshirt-div").style.backgroundColor = e.target.value;
    }, false);

    document.getElementById("custom_product_front").addEventListener("change", function(e) {
      let reader = new FileReader();

      reader.onload = function(event) {
        let imgObj = new Image();
        imgObj.src = event.target.result;

        imgObj.onload = function() {
          imgObj.onload = null;
          let img = new fabric.Image(imgObj);

          console.log(imgObj.readyState);

          img.scaleToHeight(220);
          img.scaleToWidth(145); 
          canvas.centerObject(img);
          canvas.add(img);
          canvas.renderAll();
        };
      };

      if (e.target.files[0]) {
        reader.readAsDataURL(e.target.files[0]);
      }
    }, false);

    document.addEventListener("keydown", (e) => {
      if (e.key == "Delete") {
        console.log("Removing selected element on Fabric.js on DELETE key !");
        canvas.remove(canvas.getActiveObject());
      }
    }, false);

  }
}
