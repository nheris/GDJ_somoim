 let popY = window.screen.width
 let popX =window.screen.height
 let payBtn = document.querySelectorAll(".paymentBtn");
 let payment = document.getElementById("payment");

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
payBtn.forEach((button)=>{
  button.addEventListener("click",function(){
    let dataType = this.getAttribute('data-type');
    popUp = popupWindow("/pay/paypopup?pTypeNum="+dataType,"payment",400,300);
    popUp.onresize = function(){
      popUp.resizeTo(425,400)
    }
  })
})

 var IMP = window.IMP;
 IMP.init('imp74704882');
   function requestPay() {
    console.log("event");
    IMP.request_pay(
      {
        pg: "kcp.AO09C",
        pay_method: "card",
        merchant_uid: "57009933-33004",
        name: "당근 10kg",
        amount: 1004,
        buyer_email: "Iamport@chai.finance",
        buyer_name: "포트원 기술지원팀",
        buyer_tel: "010-1234-5678",
        buyer_addr: "서울특별시 강남구 삼성동",
        buyer_postcode: "123-456",
      },
      function (rsp) {
        if(rsp.success){
        	console.log(rsp);
    	}else{
    		console.log(rsp);
    	}
      }
    );
  }
  payment.addEventListener("click",function(){{
    window.close();   
  }});
  