(function($) {

  $.fn.menumaker = function(options) {
      
      var cssmenu1 = $(this), settings = $.extend({
        title: "Menu",
        format: "dropdown",
        breakpoint: 768,
        sticky: false
      }, options);

      return this.each(function() {
        cssmenu1.find('li ul').parent().addClass('has-sub');
        if (settings.format != 'select') {
          cssmenu1.prepend('<div id="menu-button">' + settings.title + '</div>');
          $(this).find("#menu-button").on('click', function(){
            $(this).toggleClass('menu-opened');
            var mainmenu = $(this).next('ul');
            if (mainmenu.hasClass('open')) { 
              mainmenu.hide().removeClass('open');
            }
            else {
              mainmenu.show().addClass('open');
              if (settings.format === "dropdown") {
                mainmenu.find('ul').show();
              }
            }
          });

          multiTg = function() {
            cssmenu1.find(".has-sub").prepend('<span class="submenu-button"></span>');
            cssmenu1.find('.submenu-button').on('click', function() {
              $(this).toggleClass('submenu-opened');
              if ($(this).siblings('ul').hasClass('open')) {
                $(this).siblings('ul').removeClass('open').hide();
              }
              else {
                $(this).siblings('ul').addClass('open').show();
              }
            });
          };

          if (settings.format === 'multitoggle') multiTg();
          else cssmenu1.addClass('dropdown');
        }

        else if (settings.format === 'select')
        {
          cssmenu1.append('<select style="width: 100%"/>').addClass('select-list');
          var selectList = cssmenu1.find('select');
          selectList.append('<option>' + settings.title + '</option>', {
                                                         "selected": "selected",
                                                         "value": ""});
          cssmenu1.find('a').each(function() {
            var element = $(this), indentation = "";
            for (i = 1; i < element.parents('ul').length; i++)
            {
              indentation += '-';
            }
            selectList.append('<option value="' + $(this).attr('href') + '">' + indentation + element.text() + '</option');
          });
          selectList.on('change', function() {
            window.location = $(this).find("option:selected").val();
          });
        }

        if (settings.sticky === true) cssmenu1.css('position', 'fixed');

        resizeFix = function() {
          if ($(window).width() > settings.breakpoint) {
            cssmenu1.find('ul').show();
            cssmenu1.removeClass('small-screen');
            if (settings.format === 'select') {
              cssmenu1.find('select').hide();
            }
            else {
              cssmenu1.find("#menu-button").removeClass("menu-opened");
            }
          }

          if ($(window).width() <= settings.breakpoint && !cssmenu1.hasClass("small-screen")) {
            cssmenu1.find('ul').hide().removeClass('open');
            cssmenu1.addClass('small-screen');
            if (settings.format === 'select') {
              cssmenu1.find('select').show();
            }
          }
        };
        resizeFix();
        return $(window).on('resize', resizeFix);

      });
  };
})(jQuery);

(function($){
$(document).ready(function(){

$(document).ready(function() {
  $("#cssmenu1").menumaker({
    title: "Menu",
    format: "dropdown"
  });

  $("#cssmenu1 a").each(function() {
  	var linkTitle = $(this).text();
  	$(this).attr('data-title', linkTitle);
  });
});

});
})(jQuery);
