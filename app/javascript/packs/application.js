// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

var JQuery = require("jquery")

global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

require('bootstrap')
