// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
require("jquery")
import "bootstrap"
require("semantic-ui-sass")
$(document).on("turbolinks:load", () => $(".ui.dropdown").dropdown());
