let moimList = document.getElementById("moimList");
let popupWindow = null;
let width = 1100;
let height = 600;

moimList.addEventListener("click", function (e) {
    e.preventDefault();
    let width = 500;
    let height = 600;
    let screenWidth = window.innerWidth;
    let screenHeight = window.innerHeight;
    let left = (screenWidth - width) / 2;
    let top = (screenHeight - height) / 2;
    let features = `width=${width},height=${height},left=${left},top=${top}`;

    popupWindow = window.open("/admin/adminList", "PopupWin", features);
    popupWindow.addEventListener("load", () => {
        let content = popupWindow.document.querySelector("body");
        content.style.overflowX = "auto";
    });
    // popupWindow.onresize = (_) => {
    //     popupWindow.resizeTo(width, height);
    // };
});

window.addEventListener("resize", function () {
    let left = (window.innerWidth - width) / 2;
    let top = (window.innerHeight - height) / 2;
    popupWindow.moveTo(left, top);
});

window.addEventListener("resize", function () {
    let left = (window.innerWidth - width) / 2;
    let top = (window.innerHeight - height) / 2;
    popupWindow.moveTo(left, top);
});
