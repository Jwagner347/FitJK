// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready(function() {

  var exerciseName = $("#exercise_exercise_name").get(0).value;

  $('.button').on('click', function() {

    if (exerciseName === null || exerciseName === "") {
        alert("Name must be filled out");
        return false;
    }
  });
});
