/**
 * 
 */
// msg input

console.log('c js');

const sendMsg = document.getElementById('sendMsg');

const chat_record = document.getElementById('chat_record');
const userCh = document.getElementById('userCh');

const msgForm = document.getElementById('msgForm');
const chat_message = document.querySelector('.chat-message');

let sock = new SockJS("http://localhost:80/chat");
const chatRoomNum = document.getElementById('chatRoomNum');

const messageNum = "${chatMessageNum}";
const userName = "${userName}";
const chatText = "${chatText}";
const chatMessageStamp = "${chatMessageStamp}";

let chatHistory = document.getElementById('chat-history');
let scrollToBottom = chatHistory.scrollHeight - chatHistory.scrollTop === chatHistory.clientHeight;

// scroll 밑에 고정
function scroller(){
    if(scrollToBottom){
        chatHistory.scrollTo(0, chatHistory.scrollHeight);
    }
}

sendMsg.addEventListener('keyup',(e) => {
    if(sendMsg.value != ""){
        if(e.key == 'Enter' || e.keyCode == '13'){
            const roomCh = chatRoomNum.getAttribute('data-chatRoom');
            console.log("roomCh : "+roomCh);
            
            const chatMessage = {
                "userName" : userCh.value,
                "chatText" : sendMsg.value,
                "chatRoomNum" : roomCh
            };
            
            console.log(chatMessage);

            sock.send(JSON.stringify(chatMessage));

            scroller();
        	sendMsg.value = '';
        }
	}
});

sock.onopen = function(){
    console.log('연결');
}

sock.onmessage =  function (e){
    console.log("onmessage");
    const week = new Array('SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT');
    let today = new Date(e.timeStamp);

    const dayName = week[today.getDay()];
    const hours = today.getHours() % 12 ? today.getHours() % 12 : 12;
    const minutes = today.getMinutes() < 10 ? '0' + today.getMinutes() : today.getMinutes();
    const ampm = today.getHours() >= 12 ? 'PM' : 'AM';
    const date = `${hours}:${minutes} ${ampm}, ${dayName}`;

    let data = e.data;
    let jsonData = JSON.parse(data);
    
    let user = jsonData.userName;
    let str = jsonData.chatText;
    let roomNumber = jsonData.chatRoomNum;

    console.log(user +" : "+str+" : "+roomNumber);
    console.log(user +" : "+userCh.value);
    console.log(roomNumber +" : "+chatRoomNum.getAttribute('data-chatRoom'));
    
    if(roomNumber === chatRoomNum.getAttribute('data-chatRoom')){
        if(user === userCh.value){
            console.log('mySend');
            mySend(str, date);
        }else{
            console.log('otherSend');
            otherSend(str, date);
        }
    }
    
    
    scroller();

    console.log("onMessage : "+data);
}

sock.onerror = function(){
    console.log('error');
}

sock.onclose = function(){
    console.log('onClose');
}


function mySend(msg, date){
    // 채팅형태로 Element 추가
    // chat-record add
    let li = document.createElement("li");
    li.classList.add('clearfix');
    let div = document.createElement("div");
    div.classList.add('message-data')
    let span = document.createElement("span");
    span.classList.add('message-data-time');
    span.innerText = date;

    // 날짜와 프로필사진 (my 는 profile 사진이 위에 있음)
    chat_record.append(li);
    li.append(div);
    div.append(span);

    // msg 를 담을 div
    div = document.createElement('div');
    
    li.append(div);
    div.classList.add('message');
    div.classList.add('my-message');
    div.innerText = msg;
}

function otherSend(msg, date){
    let li = document.createElement("li");
    li.classList.add('clearfix');
    let div = document.createElement("div");
    div.classList.add('message-data');
    div.classList.add('text-right');
    let span = document.createElement("span");
    span.classList.add('message-data-time');
    
    span.innerText = date;
    
    // 날짜, 프로필사진 
    chat_record.append(li);
    li.append(div);
    div.append(span);

    div = document.createElement("div");
    
    li.append(div);
    div.classList.add('message');
    div.classList.add('other-message');
    div.classList.add('float-right');
    div.innerText = msg;
}

let chatRoom = document.querySelector(".chat-list");

chatRoom.addEventListener('click',(e)=>{
    chat_record.innerHTML = null;
    if(e.target.classList.contains('clearfix')){
        let n = e.target.getAttribute('data-roomNum');
        
        chatRoomNum.setAttribute('data-chatRoom',n);
        console.log("n : "+n +" +chatRoomNum.getAttribute('data-roomNum') : "+chatRoomNum.getAttribute('data-roomNum'));
        chat_record.style.visibility = 'visible';
        chat_message.style.visibility = 'visible';
        
            fetch("/chat/room?chatRoomNum="+n,{
                method:"GET"
            })
            .then(r => r.json())
            .then(r => {
             console.log(r);
             for(let i=0;i<r.record.length;i++){
                 let msg = r.record[i].chatText;
                 let date = r.record[i].chatTimeStamp;
                 
                 if(r.record[i].userName === userCh.value){
                     mySend(msg,date);
                 }else{
                     otherSend(msg,date);
                 }
             }
             scroller();
            });
    }
});

    

