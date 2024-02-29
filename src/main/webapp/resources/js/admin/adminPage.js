let moimadd = document.getElementById("moimadd");
moimadd.addEventListener("click", function (e) {
    e.preventDefault();
    let width = 500;
    let height = 600;
    let screenWidth = window.screen.availWidth;
    let screenHeight = window.screen.availHeight;
    let left = (screenWidth - width) / 2;
    let top = (screenHeight - height) / 2;
    let features = `width=${width},height=${height},left=${left},top=${top},resizable=no,location=no`;

    let popupWindow = window.open("/admin/add", "PopupWin", features);
    popupWindow.resizeTo(width, height);

    // 윈도우 크기가 변경되면 창 크기 조절
    window.addEventListener("resize", function () {
        screenWidth = window.screen.availWidth;
        screenHeight = window.screen.availHeight;
        left = (screenWidth - width) / 2;
        top = (screenHeight - height) / 2;
        popupWindow.resizeTo(width, height);
        popupWindow.moveTo(left, top);
    });
});
