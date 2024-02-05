const noticeList = document.getElementById("noticeList");

// 카테고리
$(".nav-link").on("click", function () {
    //$('.nav-link').removeClass('active');
    $(this).addClass("active");
    console.log("gd");
});

// NoticeList 조회
function makeList(r) {
    noticeList.getAttribute("data-user");
    r = r.datas;

    for (let i = 0; i < r.length; i++) {
        let tr = document.createElement("tr");
        let td = document.createElement("td");

        // 제목만들때 id넣기 몇번째 제목인지 확인하기 위해서
        td.setAttribute("id", "baordTitle" + r[i].boardNum);
        td.innerHTML = r[i].boardTitle;
        tr.append(td);

        td = document.createElement("td");
        td.innerHTML = r[i].userName;
        tr.append(td);

        td = document.createElement("td");
        td.innerHTML = r[i].boardWriter;
        tr.append(td);

        td = document.createElement("td");
        td.innerHTML = r[i].boardDate;
        tr.append(td);
    }
}
