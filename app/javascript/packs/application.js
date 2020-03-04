import "bootstrap";

// ADD
import '../components/message-form.js';
import '../components/messages.js';
import '../components/navbar.js';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox.js';

initMapbox();
