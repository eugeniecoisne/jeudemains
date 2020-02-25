require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";

import { initNavbarMenu } from '../plugins/navbarmenu';
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initNavbarMenu();
  initMapbox();
  });
