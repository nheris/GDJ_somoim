
function loginWithKakao(){
    Kakao.Auth.authorize({
        redirectUri:'http://localhost/member/login',
        scope:'profile_nickname,account_email'        
    })  
}
