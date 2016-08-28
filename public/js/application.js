$(document).ready(function() {
  $( "#get_help" ).click(function() {
   $( "#help_form" ).submit();
  });
  // });

  // $( "#category1" ).click(function() {
  //   $( "#help_cat_id").val("1");
  //   $( "#help_form").submit();
  // });

  // $( "#category2" ).click(function() {
  //   $( "#help_cat_id").val("2");
  //   $( "#help_form").submit();
  // });

  // $( "#category3" ).click(function() {
  //   $( "#help_cat_id").val("3");
  //   $( "#help_form").submit();
  // });

  // $( "#category4" ).click(function() {
  //   $( "#help_cat_id").val("4");
  //   $( "#help_form").submit();
  // });

  // $( "#category5" ).click(function() {
  //   $( "#help_cat_id").val("5");
  //   $( "#help_form").submit();
  // });

  //chat toggle
  $('#toggle').submit(function() {
    sendContactForm();
    return false;
  });
});


