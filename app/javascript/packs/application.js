import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { changeTo } from './tabs';
import { show_page } from './show_page_tabs'
import { initMapbox } from '../plugins/init_mapbox';

// const changeTo = destination => {

//   const login = document.getElementById('login');
//   const signup = document.getElementById('signup');

//   if (destination==='login') {
//     login.classList.add('active');
//     signup.classList.remove('active');
//   } else {
//     signup.classList.add('active');
//     login.classList.remove('active');
//   }

// }
// document.querySelector('#signup').addEventListener('click', changeTo)
// document.querySelector('#login').addEventListener('click', changeTo)


// show_page()
initMapbox();

