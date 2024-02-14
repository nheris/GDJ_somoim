// let meetX = document.getElementById("meetX").value;
// let meetY = document.getElementById("meetY").value;

let meetX = '';
let meetY = '';

const listBody = document.getElementById("listBody");
listBody.addEventListener("click",function(e){
    console.log('meetX');
    console.log(e.target.previousSibling);
    // if(e.target.previousSibling.classList.contains("meetY")){
    // 	console.log('meetY');
    //     meetY = e.target.previousSibling.getAttribute("value");
    //     console.log(meetY);

        
    // }
})



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