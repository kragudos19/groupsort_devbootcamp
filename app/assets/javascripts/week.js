var ready = function() {

  dragAndDrop();

};

function sendWeekData(){

}

function dragAndDrop(){
  var student = $(".student").draggable({
    helper: 'clone'
  });

  $(".group").droppable({
    drop: function(event, ui){
      $(this).append(ui.draggable);
      console.log("drop to row")
    }
  })
}






$(document).on('turbolinks:load', ready);


