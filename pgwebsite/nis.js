const next = document.querySelector(".next");
const prev = document.querySelector(".previous");

const numImg = 5;
let currImg = 1;

let timeoutID;

next.addEventListener("click", () => {
  currImg++;
  clearTimeout(timeoutID);
  updateImage();
});

prev.addEventListener("click", () => {
  currImg--;
  clearTimeout(timeoutID);
  updateImage();
});

const imgcontainer = document.querySelector(".img-container");

function updateImage() {
  const viewportWidth = window.innerWidth;
  const translationValue = viewportWidth >= 768 ? 800 : 400;

  if (currImg > numImg) {
    currImg = 1;
  } else if (currImg < 1) {
    currImg = numImg;
  }
  imgcontainer.style.transform = `translateX(-${(currImg - 1) * translationValue}px)`;

  timeoutID = setTimeout(() => {
    currImg++;
    updateImage();
  }, 2000);
}

updateImage();

// Update the translation value when the window is resized
window.addEventListener("resize", () => {
  clearTimeout(timeoutID);
  updateImage();
});
