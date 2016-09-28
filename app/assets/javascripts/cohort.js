var ready = function() {
  $("body").on("click", ".delete", function(event){
    $(this).remove();
  })

};

$(document).on('turbolinks:load', ready);


