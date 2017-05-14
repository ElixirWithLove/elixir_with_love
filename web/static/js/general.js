$(function(){

  function rowInit() {
    var rows   = $('.landing-jumbo'),
        winHeight   = $(window).height(),
        rowHeight  = winHeight;

    rows.css({"min-height": rowHeight+"px"});
  };

  jQuery(window).on("resize", rowInit);
  jQuery(document).on("ready", rowInit);

  });
