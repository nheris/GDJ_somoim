let moimList = document.getElementById("moimList");
let popupWindow = null;
let width = 1100;
let height = 600;

moimList.addEventListener("click", function (e) {
    e.preventDefault();
    let left = (window.innerWidth - width) / 2;
    let top = (window.innerHeight - height) / 2;
    let features = `width=${width},height=${height},left=${left},top=${top}`;

    popupWindow = window.open("/admin/adminList", "PopupWin", features);
    popupWindow.addEventListener("load", () => {
        let content = popupWindow.document.querySelector("body");
        content.style.overflowX = "auto";
    });
});

// 팝업 창의 크기 변경 시
window.addEventListener("resize", function () {
    if (popupWindow) {
        let newWidth = Math.max(width, window.innerWidth);
        let newHeight = Math.max(height, window.innerHeight);
        popupWindow.resizeTo(newWidth, newHeight);
    }
});
