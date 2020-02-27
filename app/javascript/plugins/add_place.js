const addPlace = () => {
  const buttonAddPlace = document.getElementById("buttonAddPlace");
  const placeForm = document.getElementById("formAddPlace");
  const backgroundButton = document.querySelector(".add-new-place");

  if (buttonAddPlace) {
  buttonAddPlace.addEventListener("click", (event) => {
    event.preventDefault();
    placeForm.classList.toggle("display-form-place");
    backgroundButton.classList.toggle("addNewPlaceClicked")
  });
  }
}

export { addPlace };
