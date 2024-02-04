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


// -------------------------------------

/**
 * 
 */

// const sendBtn = document.getElementById('sendBtn');
// const msgArea = document.getElementById('msgArea');
// let msg;

// console.log('why');
// sendBtn.addEventListener("click",()=>{
//     msg = document.getElementById('msg');
//     console.log('click');
//     sendMessage();
//     msg.value = '';
//  });
// // 
// let sock = new SockJS('http://localhost:80/chat');
// sock.onmessage = onMessage;
// sock.onOpen = onOpen;
// sock.onclose = onClose;



//  function sendMessage(){
//  	console.log('sendMessage');
//     sock.send(msg.value);
//  }

//  // 서버에서 메시지를 받았을 때
//  function onMessage(msg){
// 	console.log("onMessage");
//     console.log(msg);
//     let data = msg.data;
//     let sessionId = null;       // 보낸사람
//     let message = null;
//     let ar = data.split(":");

//     for(let i=0;i<ar.length;i++){
//         console.log('ar['+ i +']: '+ar[i]);
//     }

//     let cur_session = '${userId}';
//     console.log(cur_session);

//     sessionId = ar[0];
//     message = ar[1];
	
//     let str = "<div>" + message + "</div>"

//     msgArea.append(str);
    
//  }

// function onClose(){

// }

// function onOpen(){

// }





