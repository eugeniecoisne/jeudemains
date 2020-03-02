const initSearchPlaces = () => {
  const select = document.getElementById('date_id');
  const workshop_level = document.getElementById('workshop_level');

  if (select) {
    select.addEventListener('change', () => {
      document.querySelectorAll('.nb-places').forEach((elem) => {
        elem.remove();
      });
      fetch(`/workshop_dates/${select.value}/search-places`)
        .then(response => response.json())
        .then((data) => {
          let i = 0;
          for (i = 1; i <= data; i++) {
            workshop_level.insertAdjacentHTML('beforeend', `<option value="${i}" class="nb-places">${i}</option>`)
          }
        });
    });
  }
};

export { initSearchPlaces };

