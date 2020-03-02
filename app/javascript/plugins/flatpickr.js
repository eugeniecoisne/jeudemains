import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!


const initFlatpickr = () => {
  flatpickr(".datepicker", {
      "enableTime": false,
      "minDate": "today"
  })
};

export { initFlatpickr };
