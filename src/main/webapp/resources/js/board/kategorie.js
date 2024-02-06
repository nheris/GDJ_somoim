document.addEventListener('DOMContentLoaded', function() {
    getNoticeList();
    const navLinks = document.querySelectorAll('.BOARDCATEGORY');

    navLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            // 기본 동작 방지(이거 안하면 a태그때메 리로딩댐)
            event.preventDefault();
            const category = this.getAttribute('data-category');
            getNoticeList(category);
            // 모든 카테고리에서 active 클래스 제거
            navLinks.forEach(navLink => navLink.classList.remove('active'));
            // 클릭된 카테고리에 active 클래스 추가
            this.classList.add('active');
        });
    });
});     


function getNoticeList() {
    fetch("noticeList", {
        method: "GET",
    })
    .then((response) => response.json())
    .then((data) => {
        const noticeList = document.getElementById("noticeList");
        noticeList.innerHTML = ""; // 테이블 초기화하는 부분
        data.forEach((item) => {
            const boardDate = new Date(item.boardDate);
            //numeric -> 숫자년도
            // 2-digit -> 월2자리
            // 2-digit -> 일2자리
            const formattedDate = boardDate.toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' });
            // 파싱하는 작업 formattedDate를 사용하면 제일 뒤에 .이 붙어어서 나옴
            const lastDotIndex = formattedDate.lastIndexOf('.');
            const boardDates = formattedDate.substring(0, lastDotIndex);
            const row = document.createElement("tr");
            row.innerHTML = `
                <td>${item.boardNum}</td>
                <td><a href="/notice/detail?boardNum=${item.boardNum}">${item.boardTitle}</a></td>
                <td>${item.boardWriter}</td>
                <td>${boardDates}</td>
            `;
            noticeList.appendChild(row);
        });
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}
