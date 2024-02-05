const notcieList = document.getElementById("noticeList");
const noticeadd = document.getElementById("noticeadd");


// list 가져 오는 함수
function getnoticeList(page, num){
	fetch("../notice/list?page="+page+"&boardtNum="+num, {
		method:"GET"
	})
	.then(r => r.json())
	.then(r => {
		makeList(r);
	})
	;

}

// List table 생성
function makeList(r){
	let userName = notcieList.getAttribute("data-user");
	r=r.datas;
	for(let i=0;i<r.length;i++){
		let tr = document.createElement("tr");

    let td = document.createElement("td");
		td.innerHTML=r[i].boardNum;
		tr.append(td);

		td = document.createElement("td");
		td.innerHTML=r[i].boardTitle;
		tr.append(td);

		td = document.createElement("td");
		td.innerHTML=r[i].userName;
		tr.append(td);

		td = document.createElement("td");
		td.innerHTML=r[i].boardDate;
		tr.append(td);

    notcieList.appendChild(tr);

    // 버튼 활성화
    updateCategoryButtons(r);
    }
	
}
function updateCategoryButtons(data) {
  let boardCategoryButtons = document.querySelectorAll('.BOARDCATEGORY');

  for (let j = 0; j < boardCategoryButtons.length; j++) {
    let categoryButton = boardCategoryButtons[j];

    let Actives = data.some(item => item.BOARDCATEGORY === j);

    if (Actives) {
      categoryButton.classList.add('active');
    } else {
      categoryButton.classList.remove('active');
    }
  }
}