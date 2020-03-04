const initNavbarMenu = () => {
  const menuButton = document.querySelector("#menuButton");
  const menu = document.querySelector("#sideMenu");
  const menuClose = document.querySelector("#menuClose");

  menuButton.addEventListener("click", (event) => {
    event.preventDefault();
    menu.classList.add("open");
  });
  menuClose.addEventListener("click", (event) => {
    menu.classList.remove("open");
  });
}

export { initNavbarMenu };

/* Set the width of the side navigation to 250px */
// function openNav() {
//   document.getElementById("mySidenav").style.width = "250px";
// }

//  Set the width of the side navigation to 0
// function closeNav() {
//   document.getElementById("mySidenav").style.width = "0";
// }
