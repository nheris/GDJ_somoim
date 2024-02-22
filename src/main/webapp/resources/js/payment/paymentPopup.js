let payment = document.getElementById("payment");
let agreementCheck = document.getElementById("agreementCheck");
let price = document.getElementById("priceSpan").innerText;
let exitBtn = document.getElementById("exitBtn");

price = parseInt(price.replace(/,/g,""));

fetch("./payment",{method: "POST"}).then(r=>r.json()).then(r=>{
  const customerKey = r.customerKey;
  const widgetClientKey = r.clientKey;
  const paymentWidget = PaymentWidget(widgetClientKey, customerKey); // 회원 결제

  const paymentMethodWidget = paymentWidget.renderPaymentMethods(
    "#payment-method",
    { value: price },
    { variantKey: "DEFAULT" }
  );

  let check = paymentWidget.renderAgreement(
    "#agreement", 
    { variantKey: "AGREEMENT" }
  );

  payment.addEventListener("click", function() {
    if(!agreementCheck.checked||!check.getAgreementStatus().agreedRequiredTerms){
      alert("필수 사항에 동의하셔야 결제 가능합니다");
    }else{
      paymentWidget.requestPayment({
            orderId: "1W_pCfO4rzG9szJEcThKe",
            orderName: "테스트결제",
            successUrl: window.location.origin+"/pay/success",
            failUrl: window.location.origin+"/pay/success",
          });
    }
  });
});





exitBtn.addEventListener("click",function(){
  if(confirm("결제를 취소하시겠습니까?")){
    window.close();
  };
});