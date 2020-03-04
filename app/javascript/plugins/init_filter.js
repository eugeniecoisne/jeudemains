const initFilter = () => {
  const form = document.querySelector('.workshops-index-container form');

  if (form) {
    form.addEventListener('change', (e) => {
      form.submit();
    });
  }
};

export { initFilter };
