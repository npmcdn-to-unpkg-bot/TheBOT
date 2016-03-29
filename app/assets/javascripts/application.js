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
//= require_tree .
//= require jqcloud
//= require bootstrap


$(document).ready(function() {

  $.get("/search",function(data){

      var word_array = [
           {text: (data[0][0]), weight: 50},
           {text: (data[1][0]), weight: 40},
           {text: (data[2][0]), weight: 40},
           {text: (data[3][0]), weight: 40},
           {text: (data[4][0]), weight: 30},
           {text: (data[5][0]), weight: 30},
           {text: (data[6][0]), weight: 30},
           {text: (data[7][0]), weight: 30},
           {text: (data[8][0]), weight: 30},
           {text: (data[9][0]), weight: 30},
           {text: (data[10][0]), weight: 30},
           {text: (data[11][0]), weight: 30},
           {text: (data[12][0]), weight: 20},
           {text: (data[13][0]), weight: 20},
           {text: (data[14][0]), weight: 20},
       ];

     if ($("#example").length) {
         // When DOM is ready, select the container element and call the jQCloud method, passing the array of words as the first argument.
         $("#example").jQCloud(word_array);
      };
  });


  $(".banner").click(function(){
    window.location.href = "/news";
  });

  $('.banner').mouseover(function() {
  $('.text-content_banner').css("visibility","visible");
  });


  $('.banner').mouseout(function() {
  $('.text-content_banner').css("visibility","hidden");
  });

  $(".politics").click(function(){
    window.location.href = "/politics";
  });

  $('.politics').mouseover(function() {
  $('.text-content_politics').css("visibility","visible");
  });


  $('.politics').mouseout(function() {
  $('.text-content_politics').css("visibility","hidden");
  });


  $(".socialjustice").click(function(){
    window.location.href = "/socialjustice";
  });

  $('.socialjustice').mouseover(function() {
  $('.text-content_sj').css("visibility","visible");
  });


  $('.socialjustice').mouseout(function() {
  $('.text-content_sj').css("visibility","hidden");
  });


  $(".film").click(function(){
    window.location.href = "/film";
  });

  $('.film').mouseover(function() {
  $('.text-content_film').css("visibility","visible");
  });


  $('.film').mouseout(function() {
  $('.text-content_film').css("visibility","hidden");

  });

  $(".music").click(function(){
    window.location.href = "/music";
  });

  $('.music').mouseover(function() {
  $('.text-content_music').css("visibility","visible");
  });


  $('.music').mouseout(function() {
  $('.text-content_music').css("visibility","hidden");
  });

  $('.grid').masonry({
  // options...
  itemSelector: '.grid-item',
  columnWidth: 200
  });


});
