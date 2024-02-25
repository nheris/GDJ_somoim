console.log("잘들어온다");

$("#checkId").click(function(){
    fetch("./findCheck?userName="+$("#userName").val()+"&email="+$("#email").val(),{
        method:"GET",
    })
    .then(response=>response.text())
    .then(response=>{response.trim()
        console.log(response)
        if(response == 1){
            alert("오키")
            
        }else{
            alert("안돼")
            
        }
    })
})