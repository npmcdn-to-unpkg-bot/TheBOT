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
//= require turbolinks
//= require_tree .
//= require jqcloud
//= require bootstrap



$(document).ready(function() {

  var word_array = [
         {text: "Lorem", weight: 15},
         {text: "Ipsum", weight: 9, link: "http://jquery.com/"},
         {text: "Dolor", weight: 6, html: {title: "I can haz any html attribute"}},
         {text: "Sit", weight: 7},
         {text: "Amet", weight: 5}

     ];
  if ($("#example").length) {
      // When DOM is ready, select the container element and call the jQCloud method, passing the array of words as the first argument.
      $("#example").jQCloud(word_array);
  };




  $(".banner").click(function(){
    window.location.href = "/news";
  });

  $(".politics").click(function(){
    window.location.href = "/politics";
  });

  $(".socialjustice").click(function(){
    window.location.href = "/socialjustice";
  });

  $(".film").click(function(){
    window.location.href = "/film";
  });

  $(".music").click(function(){
    window.location.href = "/music";
  });

});
