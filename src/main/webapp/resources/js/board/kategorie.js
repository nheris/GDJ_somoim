const navLinks = document.querySelectorAll(".BOARDCATEGORY");
navLinks.forEach((link) => {
    link.addEventListener("click", function (event) {
        // 기본 동작 방지(이거 안하면 a태그때메 리로딩댐)
        event.preventDefault();
        const category = this.getAttribute("data-category");
        // 모든 카테고리에서 active 클래스 제거
        navLinks.forEach((navLink) => navLink.classList.remove("active"));
        // 클릭된 카테고리에 active 클래스 추가
        this.classList.add("active");
    });
});
getNoticeList("", "", ""); // 매개변수를 전달하지 않고 호출

let tbody = document.getElementById("noticeList");
tbody.addEventListener("click", function (e) {
    //contains -> 문자열 포함 확인
    if (e.target.classList.contains("page-link")) {
        //data-pageNum -> page startNum, lastNum 담아놓은 사용자 변수
        let page = e.target.getAttribute("data-pageNum");
        console.log(page);
        getNoticeList("", page, "");
    }
});
// noticeList,page 호출
function getNoticeList(search, page, searchFind) {
    let url =
        "noticeList?page=" +
        page +
        "&search=" +
        search +
        "&searchFind=" +
        searchFind;
    fetch(url, {
        method: "GET",
    })
        .then((response) => response.text())
        .then((r) => {
            document.getElementById("noticeList").innerHTML = r;
        });
}
// 검색
let searchbtn = document.getElementById("searchbtn");
let listsear = document.getElementById("search");
searchbtn.addEventListener("click", function (e) {
    e.preventDefault();
    console.log(listsear.value);
    let searchFind = document.getElementById("searchFind").value;
    console.log(searchFind);
    getNoticeList(listsear.value, "", searchFind);
});

let searchFind = document.getElementById("searchFind");
// let searchFind = querySelectorAll("#searchFind");
searchFind.addEventListener("change", (e) => {
    console.log(searchFind.value);
});
