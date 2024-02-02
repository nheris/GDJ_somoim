
const password = document.getElementById("password");
const passwordResult = document.getElementById("passwordResult");
const passwordCheck = document.getElementById("passwordCheck");
const passwordCheckResult = document.getElementById("passwordCheckResult");
const btn = document.getElementById("btn");
const frn = document.querySelector("#frm");

let p1 = false;
let p2 = false;

password.addEventListener("keyup",()=>{

    let p = password.value;
    if(p.length>7){
        passwordResult.innerHTML=""
        p1=true;
    }else{
        console.log("8자리이상");
        passwordResult.innerHTML="비밀번호는 8자리 이상"
        p1=false;
    }

passwordCheck.addEventListener("keyup",()=>{
    
    if(password.value==passwordCheck.value){
        passwordCheckResult.innerHTML="일치"
        p2=true;
    }else{
        passwordCheckResult.innerHTML="비밀번호가 불일치"
        p2=false;
    }
})

btn.addEventListener("click",(e)=>{
    e.preventDefault();
    if(p1&&p2){
        frm.submit();
        
    }else{
        alert("비밀번호 확인");
    }


})


})