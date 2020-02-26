require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";

import { initNavbarMenu } from '../plugins/navbarmenu';
import { ShowWorkshops } from '../plugins/show_workshops';
import { initFlatpickr } from '../plugins/flatpickr';
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initNavbarMenu();
  initFlatpickr();
  ShowWorkshops();
  initMapbox();
});



