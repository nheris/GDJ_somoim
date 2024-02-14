/**
 * 
 */
// msg input

console.log('js');

const sendMsg = document.getElementById('sendMsg');

const chat_record = document.getElementById('chat_record');
const userCh = document.getElementById('userCh');
const msgForm = document.getElementById('msgForm');

let sock = new SockJS("http://localhost:80/chat");





sendMsg.addEventListener('keyup',(e) => {
	if(sendMsg.value != ""){
        if(e.key == 'Enter' || e.keyCode == '13'){
            sock.send(userCh.value+":"+sendMsg.value);

            // fetch
			
            // mySend(userCh.value +" : "+sendMsg.value);

        	sendMsg.value = '';
        }
	}
});

sock.onopen = function(){
    console.log('연결');
    sendMsg.innerHTML = 'con';
}

sock.onmessage =  function (e){
    const week = new Array('SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT');
    let today = new Date(e.timeStamp);
    console.log(today.getHours()+":"+today.getMinutes());

    const dayName = week[today.getDay()];
    const hours = today.getHours() % 12 ? today.getHours() % 12 : 12;
    const minutes = today.getMinutes() < 10 ? '0' + today.getMinutes() : today.getMinutes();
    const ampm = today.getHours() >= 12 ? 'PM' : 'AM';
    const date = `${hours}:${minutes} ${ampm}, ${dayName}`;

    let data = e.data;
    
    let ar = data.split(":");

    let sessionid = null;
    let smsg = null;

    console.log(ar[0])+" : "+ar[1];


    if(ar[0] == userCh.value){
        mySend(ar[1], date);
    }else{
        otherSend(ar[1], date);
    }
    
    scroller();

    console.log("onMessage : "+data);
}

sock.onerror = function(){
    console.log('error');
}

// sock.onclose = function(){
//     console.log('onClose');
//     }
// }

{/* 
<div class="message-data">
    <span class="message-data-time">10:12 AM, Today</span>
</div> 
*/}

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
    let div = document.createElement('div');
    div.classList.add('message-data');
    div.classList.add('text-right');
    let span = document.createElement('span');
    span.classList.add('message-data-time');
    
    span.innerText = date;
    
    // 날짜, 프로필사진 
    chat_record.append(li);
    li.append(div);
    div.append(span);

    div = document.createElement('div');
    
    li.append(div);
    div.classList.add('message');
    div.classList.add('other-message');
    div.classList.add('float-right');
    div.innerText = msg;
}

let chatHistory = document.getElementById('chat-history');
let newMsgCount = 0;
const newCntBtn = document.querySelector('#bBtn > div');
let scrollToBottom = chatHistory.scrollHeight - chatHistory.scrollTop === chatHistory.clientHeight;

// scroll 밑에 고정
function scroller(){
    if(scrollToBottom){
    	console.log('visible');
        chatHistory.scrollTo(0, chatHistory.scrollHeight);
    }
}
