let temp = document.getElementById("temp");
// let temp2 = temp.getAttribute("data-temp");
let more = document.getElementById("more");
let updat = document.getElementById("update");
let delet = document.getElementById("delete");
let replyList = document.getElementById("replyList");
const num = document.querySelector("#replyForm");
let n = document.getElementById("deletetemp");
const dele = document.getElementById("del");
console.log("replyNum = " + n.value);
///////////////////////////////////////////////////////
getreplyList("", temp.value); // 첫 페이지 호출


//modal 수정 버튼 (jsp에 뿌려져있기때문에 이벤트 위임이 필요가 없음)
replyUpdateButton.addEventListener("click",()=>{
	let replyUpdateForm = document.getElementById("replyUpdateForm");
	let FormDatax = new FormData(replyUpdateForm);
	fetch("../reply/update",{
		method:"POST",
		body:FormDatax
	}).then(r=> r.json())
	.then(r=> {
		alert(r)
		if(r>0){ // 0과 비교하는건 결과값이 0,1로 옴 
			//replyContens와 num을 꺼내오는 작업
			//td의 Id를 가져와서 내용을 수정
			let  i ="replyContents"+document.getElementById("replyUpdateNum").value
			i= document.getElementById(i);
			i.innerHTML = document.getElementById("replyUpdateContents").value
		}else{
			alert('수정 실패')
		}
		// form데이터를 비워주는 역할
		replyUpdateForm.reset();
		//버튼을 눌렀을때 강제로 버튼을 클릭하게 하는 이벤트
		document.getElementById("replyCloseButton").click();
		
	})
})


//수정 버튼(자바스크립트방식) [이벤트 위임]
replyList.addEventListener("click",(e)=>{
	if(e.target.classList.contains("update")){
		// modal textarea
		const replyUpdateContents = document.getElementById("replyUpdateContents");
		
		// td의 id생성
		let i ='replyContents'+e.target.getAttribute("data-replyNum");

		//해당 id의 td element가져옴
		const r = document.getElementById(i)
		alert(r.innerHTML);

		//modal 창에 contenst값을 넣어줌 innertext상관없
		replyUpdateContents.value=r.innerHTML;

		// Contenst를 modal에 넘겨주는 역할
		// input value값에 replyNum이 넣어져있는거 element에서 확인 가능
		document.getElementById("replyUpdateNum").value=e.target.getAttribute("data-replyNum");

		// td의 다음 형재의 내용 (contents-> replyWriter)
		 document.getElementById("replyWriter").value=r.nextSibling.innerHTML;
	}
})





//삭제 버튼 (제이쿼리)
$("#replyList").on("click", ".del", function(){
	let n = $(this).attr("data-replyNum")
	console.log("replyNum : ", n)

	
	fetch("../reply/delete",{
		method:"post",
		headers : {"Content-type": 'application/x-www-form-urlencoded;charset=utf-8'},
		body:"boardReplyNum="+n+"&boardNum="+ up.getAttribute("data-board-num")
	})
	.then(r=>r.json())
	.then(r=>{
		replyList.innerHTML="";
		makeList(r);
	})
})


//더보기
more.addEventListener("click", () => {
    console.log("more click");
    let p = more.getAttribute("data-replyList-page"); //현재 페이지 번호
    let a = more.getAttribute("data-replyList-totalPage"); //전체 페이지 번호

    if (p > a) {
        alert("마지막 페이지 입니다");
    }

    getreplyList(p, updat.getAttribute("data-board-num"));
});

function makeList(r) {
    more.setAttribute("data-replyList-page", r.pager.page * 1 + 1);
    more.setAttribute("data-replyList-totalPage", r.pager.totalPage);
    let userName = replyList.getAttribute("data-user");
    r = r.datas;
    for (let i = 0; i < r.length; i++) {
        let tr = document.createElement("tr");

        let td = document.createElement("td");
        // contestns만들때 id넣기
        td.setAttribute("id", "boardReplyText" + r[i].boardreplyNum);
        td.innerHTML = r[i].boardReplyText;
        tr.append(td);

        td = document.createElement("td");
        td.innerHTML = r[i].userName;
        tr.append(td);

        td = document.createElement("td");
        let d = new Date(r[i].boardReplyDate);
        td.innerHTML =
            d.getFullYear() + "." + (d.getMonth() + 1) + "." + d.getDate();
        tr.append(td);

        if (userName == r[i].userName) {
            td = document.createElement("td");
            let b = document.createElement("button");
            b.innerHTML = "삭제";
            b.setAttribute("id", "del");
            b.setAttribute("class", "btn btn-outline-dark");
            b.setAttribute("data-replyNum", r[i].boardReplyNum);
            td.append(b);
            tr.append(td);

            td = document.createElement("td");
            b = document.createElement("button");
            b.innerHTML = "수정";
            b.setAttribute("class", "update");
            b.setAttribute("class", "btn btn-outline-dark");
            b.setAttribute("data-replyNum", r[i].boardReplyNum);
            b.setAttribute("data-bs-toggle", "modal");
            b.setAttribute("data-bs-target", "#replyUpdateModal");
            td.append(b);
            tr.append(td);
        }
        replyList.append(tr);
    }
}

// replyList,page 호출
function getreplyList(page, temp) {
    let url = "/reply/list?page=" + page + "&boardNum=" + temp;
    fetch(url, {
        method: "GET",
    })
        .then((response) => response.json())
        .then((r) => {
            makeList(r);
        });
}

//댓글등록
replyAdd.addEventListener("click", () => {
    const replyForm = document.getElementById("replyForm");
    let form = new FormData(replyForm);
    fetch("/reply/add", {
        method: "POST",
        body: form,
    })
        .then((r) => r.json())
        .then((r) => {
            console.log(r);
            replyList.innerHTML = "";
            makeList(r);
            replyForm.reset();
        });
});

// delete
// replyList.addEventListener("click", function (e) {
//     if ((e.target.id = "del"));
//     let boardReplyNum = document.getElementById("data-replyNum");
//     console.log(boardReplyNum);
//     {
//         console.log("click");
//         fetch("/reply/delete", {
//             method: "POST",
//             body:
//                 "boardReplyNum=" +
//                 boardReplyNum +
//                 "&boardNum=" +
//                 updat.getAttribute("data-board-num"),
//         })
//             .then((r) => r.json())
//             .then((r) => {
//                 console.log(r);
//                 replyList.innerHTML = "";
//                 makeList(r);
//             });
//     }
// });
