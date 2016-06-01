// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/




$(document).on('page:load', function() {

  var exerciseName, exerciseDescription;

  $('.button').on('click', validateExerciseForm)


  function validateExerciseForm() {
    exerciseName = $("#exercise_exercise_name").get(0).value;
    exerciseDescription = $("#exercise_description").get(0).value;

    if (exerciseName === null || exerciseName === "") {
        alert("Please provide an Exercise Name");
        return false;
    }

    if (exerciseDescription === null || exerciseDescription === "") {
        alert("Please provide an Exercise Description");
        return false;
    }
  };
});
