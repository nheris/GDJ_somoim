/**
 * 
 */

const sendBtn = document.getElementById('sendBtn');
const msgArea = document.getElementById('msgArea');
const msgForm = document.getElementById('msgForm');

console.log("js");
// console.log('why');
// sendBtn.addEventListener("click",()=>{
//     msg = document.getElementById('msg');
//     console.log('click');
//     sendMessage();
//     msg.value = '';
//  });
// 
let sock = new SockJS('http://localhost:80/chat');
// sock.onmessage = onMessage;
// sock.onOpen = onOpen;
// sock.onclose = onClose;

sock.onOpen = e =>{
    msgArea.innerHTML = '';
}

sock.onMessage = e =>{
    let chat = document.createElement('span');
    chat.innerText = e.data;
    
    console.log(e.data);
    msgArea.appendChild(chat);
}

msgArea.onsubmit = e =>{
    e.preventDefault();
    sock.send(msgForm['msg'].value);
    
    msgForm['msg'].value = '';
    msgForm['msg'].focus();
}

function sendMessage(){
    console.log('sendMessage');
    sock.send(msg.value);
}