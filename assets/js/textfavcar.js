/*back to top button*/
var btn = $('#button1');

$(window).scroll(function () {
  if ($(window).scrollTop() > 300) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});

btn.on('click', function (e) {
  e.preventDefault();
  $('html, body').animate({
    scrollTop: 0
  }, '300');
});

// Wrap every letter in a span
var textWrapper = document.querySelector('.ml2');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({
    loop: false
  })
  .add({
    targets: '.ml2 .letter',
    scale: [4, 1],
    opacity: [0, 1],
    translateZ: 0,
    easing: "easeOutExpo",
    duration: 950,
    delay: (el, i) => 70 * i
  });

function openwin() {
  alert('感謝您!訂單己完成。');
  window.location.href = "order.html";
};

function Add() {
  var num = parseInt(document.getElementById('itemcount').innerText);
  num++;
  document.getElementById('itemcount').innerText = num.toString();
  ProductNumberChange();
}

function Less() {
  var num = parseInt(document.getElementById('itemcount').innerText);
  if (num > 1) {
    num--;
    document.getElementById('itemcount').innerText = num.toString();
    ProductNumberChange();
  } else {
    Delete()
  }
}

function ProductNumberChange() {
  var price = parseInt(document.getElementById('price').innerText.substring(3));
  var total = price * parseInt(document.getElementById('itemcount').innerText);
  document.getElementById('amount').innerText = "NT$" + total.toString();
  document.getElementById('total').innerText = document.getElementById('amount').innerText;
  ProductTotalChanged();
}

function ProductTotalChanged() {
  var product_total = parseInt(document.getElementById('total').innerText.substring(3));
  var shipping_cost = parseInt(document.getElementById('shipping_cost').innerText.substring(3));
  document.getElementById('total_price').innerText = "NT$" + (product_total + shipping_cost).toString();
}


function Delete() {
  if (confirm('您希望刪除此商品嗎？') == true) {
    document.getElementById('delete_btn').parentElement.parentElement.remove();
    document.getElementById('total').innerText = "NT$0"
    document.getElementById('shipping_cost').innerText = "NT$0";
    document.getElementById('total_price').innerText = "NT$0";
  } else {
    console.log("Cancel");
  }

}

function openwin() {
  alert('感謝您!訂單己完成。');
  window.location.href = "order.html";
};

function Add() {
  var num = parseInt(document.getElementById('itemcount').innerText);
  num++;
  document.getElementById('itemcount').innerText = num.toString();
  ProductNumberChange();
}

function Less() {
  var num = parseInt(document.getElementById('itemcount').innerText);
  if (num > 1) {
    num--;
    document.getElementById('itemcount').innerText = num.toString();
    ProductNumberChange();
  } else {
    Delete()
  }
}

function ProductNumberChange() {
  var price = parseInt(document.getElementById('price').innerText.substring(3));
  var total = price * parseInt(document.getElementById('itemcount').innerText);
  document.getElementById('amount').innerText = "NT$" + total.toString();
  document.getElementById('total').innerText = document.getElementById('amount').innerText;
  ProductTotalChanged();
}

function ProductTotalChanged() {
  var product_total = parseInt(document.getElementById('total').innerText.substring(3));
  var shipping_cost = parseInt(document.getElementById('shipping_cost').innerText.substring(3));
  document.getElementById('total_price').innerText = "NT$" + (product_total + shipping_cost).toString();
}