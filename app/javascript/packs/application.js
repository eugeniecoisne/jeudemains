require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";


import { initNavbarMenu } from '../plugins/navbarmenu';
import { initFlatpickr } from '../plugins/flatpickr';

document.addEventListener('turbolinks:load', () => {
  initNavbarMenu();
  initFlatpickr();
});
