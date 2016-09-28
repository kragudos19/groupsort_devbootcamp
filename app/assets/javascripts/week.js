var ready = function() {

  dragAndDrop();

  $("body").on("click", ".editWeek", function(){
    event.preventDefault();

    var url = ($(this).parent().attr("action"));
    var info = sendWeekData();

   $.ajax({
      url: url,
      type: 'PUT',
      data: { groupsData: info, length: info.length }
      //dataType: JSON
   })
   // .done({
   // //    $.get("/", function(data){})
   // //  });

  });
};

function sendWeekData(){
  //console.log("DATA")
  var groups = $(".group")

  // outer_array
  var groups_students = [];

  for (var i = 0; i < groups.length; i++){
    //inner array
    var currGroupId = $(groups[i]).attr("id").replace("group","");
    var curr_group = [];

    var current_parent = $(groups[i]).find(".student")
    for (var j = 0; j < current_parent.length; j++){
      //console.log($(current_parent[j]).attr("id"))

      //replace this
      curr_group.push($(current_parent[j]).attr("id").replace("student",""))


      //console.log(j)
    }
    //console.log(currGroupId);
    //console.log(curr_group);
    groups_students.push({group: currGroupId, students:curr_group});
  }
  //console.log(groups_students);
  return groups_students;
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


