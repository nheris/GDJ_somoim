let paymenListData = [];

async function requestPayment(){
  await fetch("./paymentData",{
    method: "GET"
  }).then((r)=>(r.json()).then((r)=>{
    paymenListData = r;
    console.log(paymenListData);

    render(r);
  }))
}

requestPayment();

function render(data){
  let paymentList = document.getElementById("paymentList-body");

  let creatTable = "";
  for(let i=0;i<paymenListData.length;i++){
    creatTable+=`<tr><td>${data.ROWNUM}</td><td>${data[i].AMOUNT}</td><td>${data[i].PTYPENAME}</td><td>${data[i].PAYMETHOD}</td><td>${data[i].PAYMENTDAY}</td></tr>`;
  };

  console.log(creatTable);

  paymentList.innerHTML = creatTable;
}
