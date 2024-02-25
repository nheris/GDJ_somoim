//console.log('연결');

//가입
//정원초과시 가입 불가
let joinBtn = document.getElementById('joinBtn');

//console.log(moimct);
//console.log(memct);

joinBtn.addEventListener("click",()=>{
    let moimct = joinBtn.getAttribute('data-moim-count');
    let memct = joinBtn.getAttribute('data-mem-count');
    let moimNum = joinBtn.getAttribute('data-moim-num');

    //console.log('연결');
    if(moimct == memct){
        alert ('정원이 초과되었습니다.')
        //e.defaultPrevented();
        return false;
    }

    joinBtn.setAttribute("href","./home/join?moimNum="+moimNum)
    fetch("./home/join?moimNum="+moimNum,{
        method: "get"
    })
    .then(res=>res.text())
    .then(r=>{
    
    })

})

//퇴출
const listBody = document.getElementById("listBody");

listBody.addEventListener("click",function(e){
	//console.log('연결1');
    if(e.target.classList.contains("kick")){
        //console.log('연결');
        let moimNum = e.target.getAttribute("data-moim-num");
        let userName = e.target.getAttribute("data-user-name");

        fetch("./home/kick",{
            method: "post",
            headers:{
                "Content-type":"application/x-www-form-urlencoded"
            },
            body: "moimNum="+moimNum+"&userName="+userName
        })
        .then(res=>res.text())
        .then(r=>{
            //console.log(r);
        })


    }
});






