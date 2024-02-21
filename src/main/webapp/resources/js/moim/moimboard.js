//REPLY
//
//댓 뜨게
let boardNum = document.getElementById("boardNum").value;
fetch("../reply/list?boardNum="+boardNum, {
	method:"GET"
}).then(r=> r.text())
  .then(r=>{
    //console.log(r);    
    document.getElementById("replyList").innerHTML=r
  })


//댓글 add
const replyAdd = document.getElementById("replyAdd");
const replyForm = document.getElementById("replyForm");

let replyList = document.getElementById("replyList");

replyAdd.addEventListener("click",()=>{
	//console.log('연결');
    let form = new FormData(replyForm);
    
    fetch("../reply/add",{
        method:"POST",
        body:form
    })

    .then(res=>res.text())
    .then(res=>{//console.log(res)
        
        replyList.innerHTML=res;
        
        //새댓추가하고 입력한 폼 값 초기화
        replyForm.reset();

    })


})

//댓 delete
replyList.addEventListener("click",function(e){
    if(e.target.classList.contains("del")){
        //console.log('연결');
        let replyNum = e.target.getAttribute("data-reply-num");
        //console.log(num);
        fetch("../reply/delete",{
            method: "post",
            headers:{
                "Content-type":"application/x-www-form-urlencoded"
            },
            body: "replyNum="+replyNum+"&boardNum="+boardNum
        })
        .then(res=>res.text())
        .then(r=>{
            //console.log(r);
            replyList.innerHTML=r;
        })
    }
});

//댓 update
replyList.addEventListener("click",(e)=>{
    if(e.target.classList.contains("up")){
        let replyNum = e.target.getAttribute("data-reply-num");
        let replyText = document.getElementById("replyText"+replyNum).value;

        if(replyText === ''){
            alert('내용을 입력하세요.');
            e.preventDefault();
            return false;
        }




        //console.log(replyText);
        //console.log(replyText.value);
        fetch("../reply/update",{
            method: "post",
            headers:{
                "Content-type":"application/x-www-form-urlencoded"
            },
            body: "replyNum="+replyNum+"&replyText="+replyText+"&boardNum="+boardNum
        })
        .then(res=>res.text())
        .then(r=>{
            console.log(r);
            //폼내용 초기화
            //replyUpdateForm.reset();
            //modal창 닫기 버튼 강제 누름
            document.getElementById("replyCloseButton"+replyNum).click();
            

            replyList.innerHTML=r;

        })
    }
})

//답 댓 add
replyList.addEventListener("click",(e)=>{
    if(e.target.classList.contains("replyup")){
        console.log('연결');

        let replyNum = e.target.getAttribute("data-reply-num");
        let reText = document.getElementById("reText"+replyNum).value;
        
        //console.log(replyNum);
        //console.log(reText);
        if(reText === ''){
            alert('내용을 입력하세요.');
            e.preventDefault();
            return false;
        }


        fetch("../reply/reply",{
            method: "post",
            headers:{
                "Content-type":"application/x-www-form-urlencoded"
            },
            body: "replyNum="+replyNum+"&replyText="+reText+"&boardNum="+boardNum
        })
        .then(res=>res.text())
        .then(r=>{
            //console.log(r);
            //폼내용 초기화
            //replyUpdateForm.reset();
            //modal창 닫기 버튼 강제 누름
            document.getElementById("reCloseButton"+replyNum).click();

            replyList.innerHTML=r;

        })
    }
})



//댓 페이징


//listbody

{/* 
<c:if test="${dto.userName eq member.userName}">
    <div style="text-align: right;">
        <a href="#" data-moim-num="120"><i class="lni lni-pencil update"></i></a>
        <a href="javascript:void(0)" class="del" data-moim-num="120"><i class="lni lni-trash del"></i></a>
        <a href="javascript:void(0)" class="del" data-moim-num="120"><i class="lni lni-reply"></i></a>
    </div>
</c:if>

<div class="author-profile">
    <img src="/resources/img/profile/profile.jpg" alt="2" style="width: 36px; height: 36px; border-radius: 100px;">
    <span class="mx-2">${}&ensp;·&ensp;작성일</span>
</div>
<div class="ms-5">
    Donec aliquam ex ut odio dictum, ut consequat leo interdum. Aenean nunc
    ipsum, blandit eu enim sed, facilisis convallis orci. Etiam commodo
    lectus
    quis vulputate tincidunt. Mauris tristique velit eu magna maximus
    condimentum.
</div>
<h3 class="comment-title my-3"></h3> */}








//UPDATE DELETE
//
const update = document.getElementById("update");
const delBtn = document.getElementById("delBtn");
const frm = document.getElementById("frm");


update.addEventListener("click",(e)=>{
    e.preventDefault();
    frm.submit();
})

delBtn.addEventListener("click", (e)=>{
	//console.log('연결');
    e.preventDefault();
    frm.setAttribute("action", "./delete");
    frm.setAttribute("method", "post");
    frm.submit();
});