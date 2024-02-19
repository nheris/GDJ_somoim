let temp = document.getElementById("temp");
// let temp2 = temp.getAttribute("data-temp");
let more = document.getElementById("more");
let updat = document.getElementById("update");
let delet = document.getElementById("delete");
let replyList = document.getElementById("replyList");
const num = document.querySelector("#replyForm");
let n = document.getElementById("deletetemp");
console.log("replyNum = " + n.value);
///////////////////////////////////////////////////////
getreplyList("", temp.value); // 첫 페이지 호출

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
            b.setAttribute("data-replyNum", r[i].replyNum);
            td.append(b);
            tr.append(td);

            td = document.createElement("td");
            b = document.createElement("button");
            b.innerHTML = "수정";
            b.setAttribute("class", "update");
            b.setAttribute("class", "btn btn-outline-dark");
            b.setAttribute("data-replyNum", r[i].replyNum);
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
replyList.addEventListener("click", function (e) {
    if ((e.target.id = "del"));
    let boardReplyNum = document.getElementById("data-replyNum");
    console.log(boardReplyNum);
    {
        console.log("click");
        fetch("/reply/delete", {
            method: "POST",
            body:
                "boardReplyNum=" +
                boardReplyNum +
                "&boardNum=" +
                updat.getAttribute("data-board-num"),
        })
            .then((r) => r.json())
            .then((r) => {
                console.log(r);
                replyList.innerHTML = "";
                makeList(r);
            });
    }
});
