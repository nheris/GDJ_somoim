console.log('cr js2');

let chatRoom = document.getElementById('chatRoomNum');

chatRoom.addEventListener('click',()=>{
    let n = chatRoom.getAttribute("data-roomNum");

    fetch("../chat?chatRoomNum="+n,{
        method:"GET"
    })
    .then(r => r.text())
    .then
});