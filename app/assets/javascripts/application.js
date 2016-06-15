// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require headroom.js/dist/headroom.min
//= require headroom.js/dist/jQuery.headroom.min
//= require bootstrap-hover-dropdown/bootstrap-hover-dropdown.min
//= require_tree .

$(document).ready(function(){
  setupHeadroom();
});


var setupHeadroom = function(){
  $(".headroom").headroom({
      "tolerance": 20,
      "offset": 80,
      "classes": {
        "initial": "animated",
        "pinned": "slideDown",
        "unpinned": "slideUp"
      }
    });

$(window).scroll(function(){
  if ($(this).scrollTop() >  140 ){
    $('.headroom').removeClass("ontop-now");
    $('.navbar-dual').removeClass("navbar-inverse");
  } else {
    $('.headroom').addClass("ontop-now");
    $('.navbar-dual').addClass("navbar-inverse");
  }
});
}
