
//delete
const listBody = document.getElementById("listBody");
listBody.addEventListener("click", function(e){
    //console.log('연결');
    if(e.target.classList.contains("del")){
    	//console.log('확인');
        let meetNum = e.target.parentNode.getAttribute("data-meet-num");
        let moimNum = e.target.parentNode.getAttribute("data-moim-num");
        console.log(meetNum);
        console.log(moimNum);
        fetch("./delete",{
            method: "post",
            headers:{
                "Content-type":"application/x-www-form-urlencoded"
            },
            body: "meetNum="+meetNum +"&moimNum"+moimNum
        })
        .then(res=>res.text())
        .then(r=>{
            console.log(r);
            //listBody.innerHTML=r;
        })
    }

})
//update



//위치 확인
// let meetX = document.getElementById("meetX").value;
// let meetY = document.getElementById("meetY").value;

// let meetX = '';
// let meetY = '';


// listBody.addEventListener("click",function(e){
//     console.log('meetX');
//     console.log(e.target.previousSibling);
//     // if(e.target.previousSibling.classList.contains("meetY")){
//     // 	console.log('meetY');
//     //     meetY = e.target.previousSibling.getAttribute("value");
//     //     console.log(meetY);

        
//     // }
// })



var mapOptions = {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);


var map = new naver.maps.Map('map', {
	    center: new naver.maps.LatLng(meetY, meetX),
	    zoom: 14
	});
    var marker = new naver.maps.Marker({
        map: map,
        position: new naver.maps.LatLng(meetY, meetX),
    });