getreplyList("", ""); // 첫 페이지 호출

//페이저 및 테이블 처리
let tbody = document.getElementById("replyList");
tbody.addEventListener("click", function (e) {
    if (e.target.classList.contains("page-link")) {
        page = e.target.getAttribute("data-pageNum"); // 페이지 업데이트
        console.log(page);
        console.log("페이지, 테이블");
        getreplyList("", page); // 페이지 변수 전달
    }
});
// replyList,page 호출
function getreplyList(page, num) {
    let url = "../reply/list?page=" + page + "&boardNum=" + num;
    fetch(url, {
        method: "GET",
    })
        .then((response) => response.text())
        .then((r) => {
            console.log(url);
            document.getElementById("replyList").innerHTML = r;
        });
}
