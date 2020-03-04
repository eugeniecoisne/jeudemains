const initScroll = () => {
  const scroll = new SmoothScroll('#onboarding-link', {
    speed: 1000
  })

};


export { initScroll }


// const initScroll = () => {
//   const link = document.getElementById("onboarding-link");
//   if (link) {
//     window.scroll({link, duration: 10000});
//   }
// };


// export { initScroll }
