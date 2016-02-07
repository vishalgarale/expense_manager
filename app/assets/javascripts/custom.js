$(document).on('ready page:load', function(event) {
  // apply non-idempotent transformations to the body
  $('.datepicker').datepicker({
    format : 'dd/mm/yyyy',
    setDate: new Date(),
    autoclose : true
  });

  $(document).click(function() {
    $(".alert-info, .alert-danger, .list-group-item-danger, .panel-danger").hide(600);
  });

});

//$(".alert-info, .alert-danger").click(function(e) {
//    e.stopPropagation(); // This is the preferred method.
//    return false;        // This should not be used unless you do not want// any click events registering inside the div
//});
