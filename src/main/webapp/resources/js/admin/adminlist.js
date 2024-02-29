let moimList = document.getElementById("moimList");
moimList.addEventListener("click", function (e) {
    e.preventDefault();
    let width = 500;
    let height = 600;
    let screenWidth = window.innerWidth;
    let screenHeight = window.innerHeight;
    let left = (screenWidth - width) / 2;
    let top = (screenHeight - height) / 2;
    let features = `width=${width},height=${height},left=${left},top=${top}`;

    let popupWindow = window.open("/admin/adminList", "PopupWin", features);
    popupWindow.addEventListener("load", () => {
        let content = popupWindow.document.querySelector("body");
        content.style.overflowX = "auto";
    });
});
