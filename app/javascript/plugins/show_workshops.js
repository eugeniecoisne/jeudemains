const ShowWorkshops = () => {
  const buttonWorkshops = document.getElementById("buttonWorkshops");
  const listOfWorkshops = document.getElementById("listOfWorkshops");

  buttonWorkshops.addEventListener("click", (event) => {
    event.preventDefault();
    listOfWorkshops.classList.toggle("display-list");
  });
}

export { ShowWorkshops };
