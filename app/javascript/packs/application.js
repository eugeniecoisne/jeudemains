require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")

import "bootstrap";

import { initNavbarMenu } from '../plugins/navbarmenu';
import { addPlace } from '../plugins/add_place';
import { initFlatpickr } from '../plugins/flatpickr';
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../plugins/init_select2';
import { initStarRating } from '../plugins/init_star_rating';
import { initSearchPlaces } from '../plugins/search_places';
import { showMoreReviews } from '../plugins/show_more_reviews';
import { initFilter } from '../plugins/init_filter';


document.addEventListener('turbolinks:load', () => {
  initNavbarMenu();
  initFlatpickr();
  addPlace();
  initSelect2();
  initStarRating();
  initSearchPlaces();
  showMoreReviews();
  initFilter();
  initMapbox();
});
