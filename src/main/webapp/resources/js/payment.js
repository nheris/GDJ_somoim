 let payBtn=document.getElementById("paymentBtn");
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
  payBtn.addEventListener("click",function(){{
 
      requestPay()
   
  }});
  
  