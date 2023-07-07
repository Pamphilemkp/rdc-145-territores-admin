// This file may be used for providing additional customizations to the Trestle
// admin. It will be automatically included within all admin pages.
//
// For organizational purposes, you may wish to define your customizations
// within individual partials and `require` them here.
//
//  e.g. //= require "trestle/custom/my_custom_js"

document.addEventListener("DOMContentLoaded", function() {
    var loginForm = document.querySelector(".login-form"); // Replace "#login-form" with the appropriate selector for your login form
  
    if (loginForm) {
      loginForm.reset();
    }
  });
  