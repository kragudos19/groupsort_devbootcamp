var ready = function() {
  hideForms()
  // var formShow = false;
  $("body").on("click", "#Login", loginForm)
  $("body").on("click", "#Register", regForm)
};

$(document).on('turbolinks:load', ready);


function hideForms() {
  $("#login-form").hide();
  $("#register-form").hide();
}

function loginForm(){
    $("#register-form").hide();
    $("#login-form").toggle();
  }

function regForm(){
    $("#login-form").hide();
    $("#register-form").toggle();
  }
