/**
 * 
 */

const sendBtn = document.getElementById('sendBtn');
const msgArea = document.getElementById('msgArea');
let msg = document.getElementById('msg');

console.log('why');
 sendBtn.addEventListener("click",()=>{
    console.log('click');
    sendMessage();
    msg.value = '';
 });
// 
let sock = new SockJS('http://localhost/chat');
sock.onMessage = onMessage;


 function sendMessage(){
 	console.log('sendMessage');
    sock.send(msg.value);
 }

 // 서버에서 메시지를 받았을 때
 function onMessage(msg){
	console.log("onMessage");
    let data = msg.data;
    let sessionId = null;       // 보낸사람
    let message = null;
    let ar = data.split(":");

    for(let i=0;i<ar.length;i++){
        console.log('ar['+ i +']: '+ar[i]);
    }

    let cur_session = '${userId}';
    console.log(cur_session);

    sessionId = ar[0];
    message = ar[1];
	
    let str = "<div>" + message + "</div>"

    msgArea.append(str);
 }

