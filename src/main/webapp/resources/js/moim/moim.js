//summernote
$('#moimText').summernote({
        placeholder: '모임에 대한 설명이나 목표를 적어주세요.',
        tabsize: 2,
        height: 250,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });

//모임개설
const submitBtn = document.getElementById("submitBtn");
let addForm = document.getElementById("addForm");

//input 공백시

let moimName = document.getElementById("moimName");
let moimText = document.getElementById("moimText");
let moimMemCount = document.getElementById("moimMemCount");
let regionShow = document.getElementById("regionShow");

document.addEventListener("DOMContentLoaded", function(){
    submitBtn.addEventListener("click",(e)=>{
    //console.log('연결')
    //console.log(regionShow.innerText)
    if(regionShow.innerText === '지역 찾기' ||regionShow.innerText === '시/군/구 선택'){
    	alert('지역을 설정해주세요.');
        e.preventDefault();
        return false;
    }else if(moimName.value === ''){
        alert('제목을 입력하세요.');
        e.preventDefault();
        return false;
    }else if(moimText.value === ''){
        alert('내용을 입력하세요.');
        e.preventDefault();
        return false;
    }else if(moimMemCount.value === ''){
        alert('정원을 입력하세요.');
        e.preventDefault();
        return false;
    }

    return true;

    let form = new FormData(addForm);
    //console.log(form)
    fetch("./add",{
        method:"post",
        headers:{
            "Content-type":"application/x-www-form-urlencoded"
        },
        body: form
    })
    .then(res=>res.text)
    .then(r=>{
        //console.log(r);
    })


    })
});

//모임 개설

// submitBtn.addEventListener("click",()=>{
//     let form = new FormData(addForm);
//     //console.log(form)
//     fetch("./add",{
//         method:"post",
//         headers:{
//             "Content-type":"application/x-www-form-urlencoded"
//         },
//         body: form
//     })
//     .then(res=>res.text)
//     .then(r=>{
//         //console.log(r);
//     })
// })

//개설시 제한
	//이미지
// File uload 검사
let ctncheck = $("#formFileMultiple");
ctncheck.on("change", () => {
    let files = ctncheck[0].files; // 선택된 파일들
    //console.log("click");
    //console.log("value임 = " + ctncheck.val());
    //console.log("Attribute임 = " + ctncheck.attr("value"));
    //console.log("선택된 파일 개수 = " + files.length);
    if (files.length > 5) {
        alert("5개 이하의 파일만 업로드 가능합니다.");
        ctncheck.val(""); // 파일 선택 취소
        return false;
    }
    for (let i = 0; i < files.length; i++) {
        let ext = files[i].name.split(".").pop().toLowerCase(); // 확장자 분리
        //console.log("ext임" + ext);
        // 아래 확장자가 있는지 체크 배열에 담아서 비교
        if ($.inArray(ext, ["jpg", "jpeg", "gif", "png"]) == -1) {
            alert(
                "jpg,gif,jpeg,png 파일만 업로드 할수 있습니다. 다시 업로드 해주십시오."
            );
            ctncheck.val(""); // 파일 선택 취소
            return false;
        }
    }
});






//카테고리
const $_SELECT_PICKER = $('.my-image-selectpicker');
$_SELECT_PICKER.find('option').each((idx, elem) => {
    const $OPTION = $(elem);
    const IMAGE_URL = $OPTION.attr('data-thumbnail');
    if (IMAGE_URL) {$OPTION.attr('data-content', "<img src='%i'/> %s".replace(/%i/,IMAGE_URL).replace(/%s/, $OPTION.text()))}
});
$('select.selectpicker').selectpicker({caretIcon: 'fa fa-angle-down'});
$_SELECT_PICKER.selectpicker();

let cityResult = '';
let remainList = '';


//지역
let moimRegion = document.getElementById("moimRegion");

function city(e){
    //console.log(e.value);
    cityResult = e.value;
    let Seoul = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구",
    "서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
    let Busan = ["강서구","금정구","기장군","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구",];
    let Daegu = ["군위군","남구","달서구","달성군","동구","북구","서구","수성구","중구"];
    let Incheon = ["강화군","계양구","남동구","동구","미추홀구","부평구","서구","연수구","옹진군","중구"];
    let Gwangju = ["광산구","남구","동구","북구","서구"];
    let Daejeon = ["대덕구","동구","서구","유성구","중구"];
    let Ulsan = ["남구","동구","북구","울주군","중구"];
    let Sejong = ["세종특별자치시"];
    let Gyeonggi = ["가평군","고양시","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시","광명시","광주시","구리시","군포시","김포시",
    "남양주시","동두천시","부천시 소사구","부천시 오정구","부천시 원미구","성남시","성남시 분당구","성남시 수정구","성남시 중원구","수원시",
    "수원시 권선구","수원시 영통구","수원시 장안구","수원시 팔달구","시흥시","안산시","안산시 단원구","안산시 상록구","안성시","안양시","안양시 동안구",
    "안양시 만안구","양주시","양평군","여주시","연천군","오산시","용인시","용인시 기흥구","용인시 수지구","용인시 처인구","의왕시","의정부시","이천시",
    "파주시","평택시","포천시","하남시","화성시"];
    let Chungbuk = ["괴산군","단양군","보은군","영동군","옥천군","음성군","제천시","증평군","진천군","청주시","청주시 상당구","청주시 서원구","청주시 청원구","청주시 흥덕구","충주시"];
    let Chungnam = ["계룡시","공주시","금산군","논산시","당진시","보령시","부여군","서산시","서천군","아산시","예산군","천안시","천안시 동남구","천안시 서북구","청양군","태안군","홍성군"];
    let Jeonnam = ["강진군","고흥군","곡성군","광양시","구례군","나주시","담양군","목포시","무안군","보성군","순천시","신안군","여수시","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
    let Gyeongbuk = ["경산시","경주시","고령군","구미시","김천시","문경시","봉화군","상주시","성주군","안동시","영덕군","영양군","영주시","영천시","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군","포항시","포항시 남구","포항시 북구"];
    let Gyeongnam = ["거제시","거창군","고성군","김해시","남해군","밀양시","사천시","산청군","양산시","의령군","진주시","창녕군","창원시","창원시 마산합포구","창원시 마산회원구","창원시 성산구","창원시 의창구","창원시 진해구","통영시","하동군","함안군","함양군","합천군"];
    let Jeju = ["서귀포시","제주시"];
    let Gangwon = ["강릉시","고성군","동해시","삼척시","속초시","양구군","양양군","영월군","원주시","인제군","정선군","철원군","춘천시","태백시","평창군","홍천군","화천군","횡성군"];
    let Jeonbuk = ["고창군","군산시","김제시","남원시","무주군","부안군","순창군","완주군","익산시","임실군","장수군","전주시","전주시 덕진구","전주시 완산구","정읍시","진안군"];

    let target = document.getElementById("remainList");

    let free = '';
    if(e.value=="서울")free = Seoul ;
    else if(e.value=="부산")free = Busan;
    else if(e.value=="대구")free = Daegu;
    else if(e.value=="인천")free = Incheon;
    else if(e.value=="광주")free = Gwangju;
    else if(e.value=="대전")free = Daejeon;
    else if(e.value=="울산")free = Ulsan;
    else if(e.value=="세종")free = Sejong;
    else if(e.value=="경기")free = Gyeonggi;
    else if(e.value=="충북")free = Chungbuk;
    else if(e.value=="충남")free = Chungnam;
    else if(e.value=="전남")free = Jeonnam;
    else if(e.value=="경북")free = Gyeongbuk;
    else if(e.value=="경남")free = Gyeongnam;
    else if(e.value=="제주")free = Jeju;
    else if(e.value=="강원")free = Gangwon;
    else if(e.value=="전북")free = Jeonbuk;

    target.options.length=0;

    for(f in free){
        let opt = document.createElement("option");
        opt.value=free[f];
        opt.innerHTML=free[f];
        target.appendChild(opt);
    }


}

const save = document.getElementById("save");



save.addEventListener("click",()=>{


    remainList = document.getElementById("remainList").value;
    //console.log(remainList);

    if(remainList=='세종특별자치시'){
        remainList='';
    }

    let moimRegion = document.getElementById("moimRegion");
    moimRegion.setAttribute("value",cityResult+" "+remainList)
    //console.log(moimRegion.value);

    document.getElementById("regionShow").innerText = moimRegion.value;
	

    //console.log(moimMemCount.value);


    document.getElementById("close").click();
})
