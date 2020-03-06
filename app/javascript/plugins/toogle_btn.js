const initBtnsIndex = () => {
  const state = document.querySelector('.workshops-index-container');
  if (state) {
    document.querySelector(`.filter_${state.dataset.active} label`).classList.add('active-btn-index');
  }
}

export { initBtnsIndex };
