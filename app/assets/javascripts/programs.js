$(document).on('page:load', function() {

  var programName, programDescription;

  $('.update-program-button').on('click', function() {
    programName = $("#program_program_name").get(0).value;
    programDescription = $("#program_description").get(0).value;

    if (programDescription === null || programDescription === "") {
        alert("Please provide a Program Name");
        return false;
    }

    if (programDescription === null || programDescription === "") {
        alert("Please provide a Program Description");
        return false;
    }
  });
});
