// 往下拉會出現的標題

var menu = $(".leah12345");
menu.hide();

$(window).scroll(function() {
  if ($(window).scrollTop() >= 100) {
    menu.slideDown(200);
  } else {
    menu.slideUp(200);
  }
});

