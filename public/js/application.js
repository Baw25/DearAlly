$(document).ready(function() {

  $( "#get_help" ).click(function() {
    $( "#get_help" ).fadeOut( "fast", function() {
      $( "#help_categories").css("visibility", "visible");
        $ ("#category1").css('visibility','visible').hide().fadeIn("fast");
        $ ("#category2").css('visibility','visible').hide().fadeIn("fast");
        $ ("#category3").css('visibility','visible').hide().fadeIn("fast");
        $ ("#category4").css('visibility','visible').hide().fadeIn("fast");  
        $ ("#category5").css('visibility','visible').hide().fadeIn("fast");
    });
  });

  $( "#category1" ).click(function() {
    $( "#help_cat_id").val("1");
    $( "#help_form").submit();
  });

  $( "#category2" ).click(function() {
    $( "#help_cat_id").val("2");
    $( "#help_form").submit();
  });

  $( "#category3" ).click(function() {
    $( "#help_cat_id").val("3");
    $( "#help_form").submit();
  });

  $( "#category4" ).click(function() {
    $( "#help_cat_id").val("4");
    $( "#help_form").submit();
  });

  $( "#category5" ).click(function() {
    $( "#help_cat_id").val("5");
    $( "#help_form").submit();
  });
});


