const navLinks = document.querySelectorAll(".BOARDCATEGORY");
const more = document.getElementById("more")
const replyList = document.getElementById("replyList");
const replyAdd = document.getElementById("replyAdd");
// 카테고리 처리

navLinks.forEach((link) => {
    link.addEventListener("click", function (event) {
        event.preventDefault();
        console.log("클릭했음");
        category = this.getAttribute("data-category"); // category 업데이트
        navLinks.forEach((navLink) => navLink.classList.remove("active"));
        this.classList.add("active");
        console.log("선택된 카테고리:", category);
    });
});


replyAdd.addEventListener("click", ()=>{
	const replyForm = document.getElementById("replyForm");
	let form = new FormData(replyForm);
    console.log('click')
	fetch("../reply/add", {
		method:"POST",
		body:form
	})
	.then(r=>r.json())
	.then(r=>{
		replyList.innerHTML="";
		makeList(r);
		replyForm.reset();
		
	})
})
// list 가져 오는 함수
function getReplyList(page, num){
	fetch("../reply/list?page="+page+"&boardNum="+num, {
		method:"GET"
	})
	.then(r => r.json())
	.then(r => {
		// makeList 함수
        console.log(r);
        console.log(makeList(r));
        makeList(r);
        
	})
	;

}

//삭제 버튼
$("#replyList").on("click", ".del", function(){
	// attr -> 제이쿼리 속성값 가져오는거
	let n = $(this).attr("data-replyNum")
	console.log("replyNum : ", n)

	
	fetch("../reply/delete",{
		method:"post",
		headers : {"Content-type": 'application/x-www-form-urlencoded;charset=utf-8'},
		body:"boardReplyNum="+n+"&boardNum="+ up.getAttribute("data-bardNum-num")
	})
	.then(r=>r.json())
	.then(r=>{
		replyList.innerHTML="";
		makeList(r);
	})
})

more.addEventListener("click", ()=>{
	let p = more.getAttribute("data-replyList-page");//현재 페이지 번호
	let a = more.getAttribute("data-replyList-totalPage");//전체 페이지 번호
	
	if(p>a){
		alert('마지막 페이지 입니다');
	}
	
	getReplyList(p, up.getAttribute("data-product-num"))
})

function makeList(r){
	more.setAttribute("data-replyList-page", r.pager.page*1+1);
	more.setAttribute("data-replyList-totalPage", r.pager.totalPage);
	let userName = replyList.getAttribute("data-user");
	r=r.datas;
    console.log(r);
	for(let i=0;i<r.length;i++){
		let tr = document.createElement("tr");

		let td = document.createElement("td");
		td.innerHTML=r[i].boardReplyText;
		tr.append(td);

		td = document.createElement("td");
		td.innerHTML=r[i].userName;
		tr.append(td);

		td = document.createElement("td");
		let d = new Date(r[i].boardReplyDate);
		td.innerHTML=d.getFullYear()+"."+(d.getMonth()+1)+"."+d.getDate();
		tr.append(td);

		if(userName == r[i].userName){
			td = document.createElement("td");
			let b = document.createElement("button")
			b.innerHTML="삭제";
			b.setAttribute("class", "del")
			b.setAttribute("data-replyNum", r[i].boardReplyNum)
			td.append(b);
			tr.append(td)

			td = document.createElement("td");
			b = document.createElement("button")
			b.innerHTML="수정";
			b.setAttribute("class", "update")
			b.setAttribute("data-replyNum", r[i].boardReplyNum)
			td.append(b);
			tr.append(td)
		}
		replyList.append(tr);
	}
}