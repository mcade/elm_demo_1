'use strict';
import css from './app.scss';
import $ from "jquery";

require('./index.html');

var Elm = require('./Main.elm');

const elmDiv = document.querySelector('#elm-app');
if (elmDiv) {
	var myApp = Elm.Main.embed(elmDiv);
}
