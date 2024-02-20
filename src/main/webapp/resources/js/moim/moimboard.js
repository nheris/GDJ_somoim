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


//REPLY
//
//댓 뜨게
let boardNum = document.getElementById("boardNum").value;
fetch("../reply/list?boardNum="+boardNum, {
	method:"GET"
}).then(r=> r.text())
  .then(r=>{
    console.log(r);    
    document.getElementById("replyList").innerHTML=r
  })


//후기댓글 등록
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
    .then(res=>{console.log(res)
        
       // replyList.innerHTML=res;
        
        //새댓추가하고 입력한 폼 값 초기화
        //replyForm.reset();

    })


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

function makeList(r){
    more.setAttribute("data-replyList-page", r.pager.page*1+1);
    more.setAttribute("data-replyList-totalPage", r.pager.totalPage);
    let userName = replyList.getAttribute("data-user");
    r=r.datas;
    for(let i=0;i<r.length;i++){


        if(userName == r[i].userName){
            let div= document.createElement("div");
            div.setAttribute("style","text-align: right;")

        }


        let tr = document.createElement("tr");

        let td = document.createElement("td");
        td.setAttribute("id","replyContents"+r[i].replyNum)
        td.innerHTML=r[i].replyContents;
        tr.append(td);
        
        td = document.createElement("td");
        td.innerHTML=r[i].userName;
        tr.append(td);

        td = document.createElement("td");
        let d = new Date(r[i].replyDate);
        td.innerHTML=d.getFullYear()+"."+(d.getMonth()+1)+"."+d.getDate();
        tr.append(td);

        td = document.createElement("td");
        td.innerHTML=r[i].replyJumsu;
        tr.append(td);

        if(userName == r[i].userName){
			td = document.createElement("td");
			let b = document.createElement("button")
			b.innerHTML="삭제";
			b.setAttribute("class", "del")
			b.setAttribute("data-replyNum", r[i].replyNum)
			td.append(b);
			tr.append(td)

			td = document.createElement("td");
			b = document.createElement("button")
			b.innerHTML="수정";
			b.setAttribute("class", "update")
			b.setAttribute("data-replyNum", r[i].replyNum)
            //data-bs-toggle="modal" data-bs-target="#exampleModal"
            b.setAttribute("data-bs-toggle","modal")
            b.setAttribute("data-bs-target","#replyUpdateModal")
			td.append(b);
			tr.append(td)
		}
        replyList.append(tr);



    }
}


