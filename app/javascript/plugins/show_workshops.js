const ShowWorkshops = () => {
  const buttonWorkshops = document.getElementById("buttonWorkshops");
  const listOfWorkshops = document.getElementById("listOfWorkshops");

  if (buttonWorkshops != null ) {
    buttonWorkshops.addEventListener("click", (event) => {
      event.preventDefault();
      listOfWorkshops.classList.toggle("display-list");
    });
  }
}

export { ShowWorkshops };
