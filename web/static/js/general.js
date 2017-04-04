$(function(){

  function jumbotronInit() {
    var jumbotron   = $('.jumbotron'),
        winHeight   = $(window).height(),
        jumbotronHeight  = winHeight;

    jumbotron.css({"min-height": jumbotronHeight+"px"});
  };

  jQuery(window).on("resize", jumbotronInit);
  jQuery(document).on("ready", jumbotronInit);

  });
