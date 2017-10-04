$(function(){

  function rowInit() {
    var rows   = $('.landing-jumbo, .cfp-row, .registration-row, .sponsor-row'),
        winHeight   = $(window).height(),
        rowHeight  = winHeight;

    rows.css({"min-height": rowHeight+"px"});
  };

  jQuery(window).on("resize", rowInit);
  jQuery(document).on("ready", rowInit);

  // Add smooth scrolling to all links
 $("a.nav-link-normal").on('click', function(event) {

   // Make sure this.hash has a value before overriding default behavior
   if (this.hash !== "") {
     // Store hash
     var hash = this.hash;

     // Using jQuery's animate() method to add smooth page scroll
     // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
     $('html, body').animate({
       scrollTop: $(hash).offset().top - 20
     }, 800, function(){

       // Add hash (#) to URL when done scrolling (default click behavior)
       window.location.hash = hash;
     });
   } // End if
  });

  $("a.nav-link-padded").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top - 200
      }, 800, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
   });

   $(window).scroll(function () {
      $('.speaker-figure').each(function () {
         if (isScrolledIntoView(this) === true) {
             $(this).addClass('speaker-visible')
         } else {
            $(this).removeClass('speaker-visible')
         }
      });
   });
});

function isScrolledIntoView(elem) {
  var docViewTop = $(window).scrollTop();
  var docViewBottom = docViewTop + $(window).height();

  var elemTop = $(elem).offset().top;
  var elemBottom = elemTop + $(elem).height();

  return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
}
