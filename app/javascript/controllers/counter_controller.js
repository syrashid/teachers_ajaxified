import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  connect() {
    setInterval(this.refresh, 5000)
  }

  // TWO WAYS OF DOING THIS, ONE WITH FETCH USING THEN, ANOTHER WITH ASYNC/AWAIT

  refresh = () => {
    console.log("5 secs have passed, and a fetch is about to happen!")
    fetch('/teachers', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        this.countTarget.innerText = data.teachers.length;
      });
  }


  // Written with async await function (How we work with promises with newer JS)
  // refresh = async () => {
  //   const response = await fetch('/teachers', { headers: { accept: "application/json" } });
  //   const data = await response.json();
  //   this.countTarget.innerText = data.teachers.length;
  // }
}
