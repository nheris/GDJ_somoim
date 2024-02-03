/**
 * 
 */

const sendBtn = document.getElementById('sendBtn');
const msgArea = document.getElementById('msgArea');
let msg;

console.log('why');
sendBtn.addEventListener("click",()=>{
    msg = document.getElementById('msg');
    console.log('click');
    sendMessage();
    msg.value = '';
 });
// 
let sock = new SockJS('http://localhost:80/chat');
sock.onmessage = onMessage;
sock.onOpen = onOpen;
sock.onclose = onClose;

sock.onOpen = e =>{
    msgArea.innerHTML = '';
}

sock.onmessage = e =>{
    const chat = document.createElement('span');
    chat.innerText = e.data;
    msgArea.appendChild(chat);
}



function sendMessage(){
    console.log('sendMessage');
    sock.send(msg.value);
}