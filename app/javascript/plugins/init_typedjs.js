import Typed from 'typed.js';

const initTyped = () => {
  const onboarding = document.querySelector('.onboarding')

  if (onboarding) {
    const options = {
      strings: ["Les ateliers créatifs, c'est quoi ?"],
      typeSpeed: 40,
      loop: true,
      backDelay: 2000
    };
    const typed = new Typed('.element', options);
  }
}


export { initTyped }
