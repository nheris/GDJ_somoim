 let popY = window.screen.width
 let popX =window.screen.height
 let payBtn = document.querySelectorAll(".paymentBtn");
 

function popupWindow(url, title, width, height) {
// width  : 팝업창 가로 크기
// height : 팝업창 세로 크기
let popupWidth = width;
let popupHeight = height;

// 브라우저 중앙 위치 계산
// window.screenX : 브라우저의 현재 스크린 좌측상단 X좌표
// window.screenY : 브라우저의 현재 스크린 좌측상단 Y좌표

// window.outerWidth  : 브라우저의 전체 가로 크기
// window.outerHeight : 브라우저의 전체 세로 크기
let popupX = Math.round(window.screenX + (window.outerWidth/4) - (popupWidth/2));
let popupY = Math.round(window.screenY + (window.outerHeight/2) - (popupHeight/2));

// 윈도우 팝업창의 스타일 지정
let featureWindow = `width=${popupWidth},height=${popupHeight}
                  left=${popupX}, top=${popupY} resizable=no`;

return window.open(url, title, featureWindow);
}
let popUp;
Array.from(payBtn).forEach((button)=>{
  button.addEventListener("click",function(){
    let dataType = this.getAttribute('data-type');
    popUp = popupWindow("/pay/paypopup?pTypeNum="+dataType,"payment",400,300);
    popUp.onresize = function(){
      popUp.resizeTo(425,400)
    }
    popUp.onload = function(){
      popUp.addEventListener("message", handleMessageFromChild);
    }
  })
})
  

  function handleMessageFromChild(e) {
    console.log(e.data);
    if (e.data === "paymentSelect") {
        // 부모 창에 메시지를 전달
        
    }
}

// 구매자의 고유 아이디를 불러와서 customerKey로 설정하세요.
// 이메일・전화번호와 같이 유추가 가능한 값은 안전하지 않습니다.
const widgetClientKey = "test_ck_GePWvyJnrK44GQx7Q1ga8gLzN97E";
const customerKey = "SnHdye8vvE8Ph9Q8-pkz1";
const paymentWidget = PaymentWidget(widgetClientKey, customerKey); // 회원 결제
  