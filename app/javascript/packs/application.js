require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")

import "bootstrap";

import { initNavbarMenu } from '../plugins/navbarmenu';
import { ShowWorkshops } from '../plugins/show_workshops';
import { addPlace } from '../plugins/add_place';
import { initFlatpickr } from '../plugins/flatpickr';
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../plugins/init_select2';
import { initStarRating } from '../plugins/init_star_rating';

document.addEventListener('turbolinks:load', () => {
  initNavbarMenu();
  initFlatpickr();
  ShowWorkshops();
  initMapbox();
  addPlace();
  initSelect2();
  initStarRating();
});



