import "bootstrap";
import './application.css'

// ADD
import '../components/message-form.js';
import '../components/messages.js';
// import '../components/navbar.js';

import '../components/price-calculation.js';


import "controllers"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox.js';
import {disableButton} from '../components/disable_button.js';
import {carouselPopUp} from '../plugins/carousel_popup.js'

initMapbox();
carouselPopUp();


