console.log("메인테스트");

let del = document.querySelectorAll('.del');
let show = document.getElementsByClassName("show");
let profile = document.querySelectorAll(".profile");
let show_profile = document.getElementById("show_profile");

let btn1 = document.getElementById("btn1");
let btn2 = document.getElementById("btn2");
let btn3 = document.getElementById("btn3");
let frm = document.querySelector("#frm");
let frm2 = document.querySelector("#frm2");

btn1.addEventListener("click",()=>{
    console.log("클릭")

    if(show_profile.style.display === "none"){
        console.log("왜안돼")
        show_profile.style.display = "table-row";
    }
    
    
    profile.forEach(profiles=>{
        profiles.setAttribute("type","file");
    })

    del.forEach(e => {
        e.remove();
    });
    for(let j = 0 ;j<del.length;j++){
    show[j].setAttribute("type","text");
    }

    btn1.setAttribute("disabled",true);
    btn2.removeAttribute("hidden");

})

btn2.addEventListener("click",(e)=>{
    e.preventDefault();
    frm.submit();
    alert("수정 완료");

})



btn3.addEventListener("click",(e)=>{
    let pwd = document.getElementById("password").value;
    let pwdCheck = document.getElementById("passwordCheck").value;
    let p_pwd=document.getElementById("p_pwd").value;
    let p_pwdCheck=document.getElementById("p_pwdCheck").innerHTML;

    function strongPassword (str) {
        return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(str);
      }

        if(p_pwd !== p_pwdCheck){
            console.log(p_pwdCheck);
            console.log(p_pwd);
            alert("현재비밀번호 확인")
        }else if(pwd==pwdCheck){
            if(strongPassword(pwd)){
                e.preventDefault();
                frm2.submit();
                alert("변경되었습니다");
                }else{
                    alert("비밀번호는 8글자 이상,영문,숫자,특수문자가 들어가야합니다")
                }
            }else{
        alert("변경할 비밀번호를 확인해주세요");
    }

    
})
