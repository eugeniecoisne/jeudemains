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
import { initSearchPlaces } from '../plugins/search_places';
import { showMoreReviews } from '../plugins/show_more_reviews';
import { initScroll } from '../plugins/scroll_down';
import { initFilter } from '../plugins/init_filter';
import { initTyped } from '../plugins/init_typedjs';


document.addEventListener('turbolinks:load', () => {
  initNavbarMenu();
  initFlatpickr();
  ShowWorkshops();
  addPlace();
  initSelect2();
  initStarRating();
  initSearchPlaces();
  showMoreReviews();
  initScroll();
  initFilter();
  const options = {
    strings: ["Les ateliers créatifs, c'est quoi ?"],
    typeSpeed: 40,
    loop: true,
    backDelay: 2000
  };
  const typed = new Typed('.element', options);
  initTyped();
  initMapbox();
});
