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
//= require foundation
//= require jquery-fileupload
//= require jquery-fileupload/vendor/tmpl
//= require turbolinks
//= require_tree .
//$(function(){ $(document).foundation(); });


(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $('.slider').slider({full_width: true, height: 550});
    
    //Color actual menu
    $('nav ul li').each(function(){
      var menu = ($('a', this).text()).toLowerCase();
      var url = window.location.href;
      
      if (url.indexOf(menu) > -1){
        $(this).addClass('active');
      }
    });
    
    //Collapsibles
    $('.collapsible').collapsible({
      accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
    
    //Loading screen
    $(".show-loading").click(function(){
      $(".black-background").show();
    });

  }); // end of document ready
})(jQuery); // end of jQuery name space

