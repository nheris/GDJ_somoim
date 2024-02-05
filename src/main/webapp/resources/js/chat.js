/**
 * 
 */
// msg input

console.log('js');
document.addEventListener("DOMContentLoaded",function(){


const sendMsg = document.getElementById('sendMsg');

const chat_record = document.getElementById('chat_record');
const userCh = document.getElementById('userCh');


let sock = new SockJS("http://localhost/chat");

sock.onopen = onOpen;
sock.onmessage = onMessage;
sock.onclose = onClose;

sendMsg.addEventListener('keyup',(e) => {
	if(sendMsg.value != ""){
        if(e.key == 'Enter' || e.keyCode == '13'){
            console.log("enter : "+sendMsg.value);
            sock.send(sendMsg.value);
			
            

            // fetch
            
            mySend(userCh.value +" : "+sendMsg.value);

            
        	sendMsg.value = '';
        }
	}
});

function onOpen(){
    console.log('연결');
    sendMsg.innerHTML = '';
}

function onMessage(e){
    console.log(e);
    let msg = e.data;
    console.log("onMessage : "+msg);
}

function onClose(){
    console.log('onClose');

}

function mySend(msg){
    // 채팅형태로 Element 추가
    // chat-record add
    let li = document.createElement("li");
    li.classList.add('clearfix');
    let div = document.createElement("div");
    div.classList.add('message-data')
    let span = document.createElement("span");
    span.classList.add('message-data-time');
    span.innerText = '날짜';

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

function otherSend(msg){
    let li = document.createElement("li");
    li.classList.add('clearfix');
    let div = document.createElement('div');
    div.classList.add('message-data');
    div.classList.add('text-right');
    let span = documeng.createElement('span');
    span.classList.add('message-data-time');
    span.innerText = '날짜';
    
    // 날짜, 프로필사진 
    chat_record.append(li);
    li.append(div);
    div.append(span);

    div = document.createElement('div');
    
    li.append('div');
    div.classList.add('message');
    div.classList.add('other-message');
    div.classList.add('float-right');
    div.innerText = msg;
}

});


messageForm.onsubmit = e => {
    e.preventDefault();
    webSocket.send(messageForm['message'].value);
    messageForm['message'].value = '';
    messageForm['message'].focus();
};