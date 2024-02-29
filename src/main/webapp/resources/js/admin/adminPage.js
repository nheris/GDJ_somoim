let moimadd = document.getElementById("moimadd");
let popupWindow = null;
let width = 500;
let height = 600;

moimadd.addEventListener("click", function (e) {
    e.preventDefault();
    let left = (window.innerWidth - width) / 2;
    let top = (window.innerHeight - height) / 2;
    let features = `width=${width},height=${height},left=${left},top=${top},resizable=no,location=no`;

    popupWindow = window.open("/admin/add", "PopupWin", features);
});

window.addEventListener("resize", function () {
    let left = (window.innerWidth - width) / 2;
    let top = (window.innerHeight - height) / 2;
    popupWindow.resizeTo(width, height);
    popupWindow.moveTo(left, top);
});
