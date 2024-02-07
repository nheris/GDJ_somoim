//delete
// const deleteBtn = document.getElementById("deleteBtn");
let moimName = document.getElementById("moimName");
let moimNum = moimName.getAttribute("data-moim-num");
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
//     ////수정 POST
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