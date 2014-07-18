// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

  //Wanker
  $(function () {
    $('[data-wanker]').wanker({delay: 2000, duration: 1000});
  });

  //Check to see if the window is top if not then display button
  $(window).scroll(function(){
    if ($(this).scrollTop() > 700) {
      $('.scrollToTop').fadeIn();
    } else {
      $('.scrollToTop').fadeOut();
    }
  });

  //Click event to scroll to top
  $('.scrollToTop').click(function(){
    $('html, body').animate({scrollTop : 0},800);
    return false;
  });

  //Order form validations
  (function($,W,D)
  {
      var JQUERY4U = {};

      JQUERY4U.UTIL =
      {
          setupFormValidation: function()
          {
              //form validation rules
              $(".newOrderForm").validate({
                  rules: {
                      email: {
                          required: true,
                          email: true
                      },
                      creditcard: {
                          required: true,
                          minlength: 16
                      },
                      agree: "required"
                  },
                  messages: {
                      creditcard: {
                          required: "Please provide a valid credit card",
                          minlength: "Your credit card number must be at least 16 characters long"
                      },
                      email: "Please enter a valid email address",
                      agree: "Please accept our policy"
                  },
                  submitHandler: function(form) {
                      form.submit();
                  }
              });
          }
      }

      //when the dom has loaded setup form validation rules
      $(D).ready(function($) {
          JQUERY4U.UTIL.setupFormValidation();
      });

  })(jQuery, window, document);
});

