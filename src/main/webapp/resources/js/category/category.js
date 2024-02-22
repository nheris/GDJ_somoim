const navLinks = document.querySelectorAll(".BOARDCATEGORY");
// 카테고리 처리

navLinks.forEach((link) => {
    link.addEventListener("click", function (event) {
        event.preventDefault();
        console.log("클릭했음");
        category = this.getAttribute("data-category"); // category 업데이트
        navLinks.forEach((navLink) => navLink.classList.remove("active"));
        this.classList.add("active");
        console.log("선택된 카테고리:", category);
    });
});
