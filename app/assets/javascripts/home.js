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
};

$(document).on('turbolinks:load', ready);




