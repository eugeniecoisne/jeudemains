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

import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initNavbarMenu();
  initMapbox();
  });

