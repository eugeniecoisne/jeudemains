const initNavbarMenu = () => {
  const menuButton = document.querySelector("#menuButton");
  const menu = document.querySelector("#sideMenu");
  const menuClose = document.querySelector("#menuClose");
  const menuClose2 = document.querySelector("#close-navbar");

  menuButton.addEventListener("click", (event) => {
    event.preventDefault();
    menu.classList.add("open");
    menuClose2.classList.add("catch-cursor");
  });
  menuClose.addEventListener("click", (event) => {
    menu.classList.remove("open");
    menuClose2.classList.remove("catch-cursor");
  });
  menuClose2.addEventListener('click', (event) => {
    menu.classList.remove("open");
    menuClose2.classList.remove("catch-cursor");
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
