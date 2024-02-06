const category0 = document.getElementById("category0");
const category1 = document.getElementById("category1");
const category2 = document.getElementById("category2");
const BOARDCATEGORY = document.getElementsByClassName("BOARDCATEGORY");
category0.addEventListener("click", () => {
    if (boardCategory == 0) {
        BOARDCATEGORY.classList.add("active");
    } else if (boardCategory != 0) {
        BOARDCATEGORY.classList.remove("active");
    }

    if (boardCategory == 1) {
        BOARDCATEGORY.classList.add("active");
    } else if (boardCategory != 1) {
        BOARDCATEGORY.classList.remove("active");
    }

    if (boardCategory == 2) {
        BOARDCATEGORY.classList.add("active");
    } else if (boardCategory != 2) {
        BOARDCATEGORY.classList.remove("active");
    }
});
getnoticeList();
function getnoticeList() {
    console.log("test");
    fetch("/notice/list", {
        method: "GET",
    })
        .then((response) => response.text())
        .then((response) => {
            console.log(response);
            $("#noticeList").html(response);
        });
}
