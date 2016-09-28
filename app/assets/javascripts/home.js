var ready = function() {


  $("#login-form").hide();
  $("#register-form").hide();
  var formShow = false;
  $("body").on("click", "#Login", function(event){
    $("#register-form").hide();
    $("#login-form").toggle();

  })

  $("body").on("click", "#Register", function(event){
    $("#login-form").hide();
    $("#register-form").toggle();
  });

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
