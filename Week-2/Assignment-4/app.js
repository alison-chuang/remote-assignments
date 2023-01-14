const heading = document.querySelector("#heading");
const button = document.querySelector("#button");
const moreBox = document.querySelectorAll(".moreBox");


heading.addEventListener("click", () => {
  if (heading.textContent === "Have a Good Time!"){
    heading.textContent = "Welcome Message";
  } else {
    heading.textContent = "Have a Good Time!";
  }
})

button.addEventListener("click", () => {
  if (moreBox[0].style.display == 'block') {
    for (var i = 0; i < moreBox.length; i++){
      moreBox[i].style.display='none';
    }
  } else {
    for (var i = 0; i < moreBox.length; i++){
      moreBox[i].style.display='block';
    }
  }
})