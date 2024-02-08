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
      
      
//delete
// const deleteBtn = document.getElementById("deleteBtn");
let moimName = document.getElementById("moimName");
//let moimNum = moimName.getAttribute("data-moim-num");
const listTbody = document.getElementById("listTbody");

// deleteBtn.addEventListener("click",()=>{
listTbody.addEventListener("click",function(e){
    
    if(e.target.classList.contains("del")){
    	//console.log('dus');
        //console.log(this);
        let num = e.target.parentNode.getAttribute("data-moim-num");
        //console.log(num);

        fetch("./delete",{
            method: "post",
            headers:{
                "Content-type":"application/x-www-form-urlencoded"
            },
            body: "moimNum="+num
        })
        .then(res=>res.text())
        .then(r=>{
            //console.log(r);
            listTbody.innerHTML=r;
        })
    }
})


//update
    ////수정 GET
listTbody.addEventListener("click",function(e){
    
    
    if(e.target.classList.contains("update")){
        //console.log('연결');
        let num = e.target.parentNode.getAttribute("data-moim-num");
        let frm = document.getElementById(num);
        //console.log(num);

        frm.submit();
    }
})
//     ////수정 POST 모달안할거라..필요x
// const submitBtn = document.getElementById('submitBtn');
// let updateForm = document.getElementById('updateForm');
// submitBtn.addEventListener("click",()=>{
//     fetch("./update",{
//         method: "post",
//         headers:{
//             "Content-type":"application/x-www-form-urlencoded"
//         },
//         body: updateForm
//     })
//     .then(res=>res.text())
//     .then(r=>{
//         console.log(r);
        
//     })
// })




//update 사진 미리보기
function readImg(input) {
    if (input.files && input.files[0]) {
        ////파일읽기
      let reader = new FileReader();
      reader.onload = function(e) {
        document.getElementById('preview').src = e.target.result;
      };
        //////file 인풋에서 change이벤트가 실행됐을때의 이벤트 헨들러
      reader.readAsDataURL(input.files[0]);
    } else {
      document.getElementById('preview').src = "";
    }
  }
  

//home 파라미터
// listTbody.addEventListener("click",function(e){
//   if(e.target.classList.contains("home")){
//       console.log('연결');
//       let num = e.target.getAttribute("data-moim-num");
//       // let frm = document.getElementById(num);
//        console.log(num);

//       // frm.submit();
//   }
// })


