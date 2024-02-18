
const update = document.getElementById("update");
const delBtn = document.getElementById("delBtn");
const frm = document.getElementById("frm");


update.addEventListener("click",(e)=>{
    e.preventDefault();
    frm.submit();
})

//delete
delBtn.addEventListener("click", (e)=>{
	//console.log('연결');
    e.preventDefault();
    frm.setAttribute("action", "./delete");
    frm.setAttribute("method", "post");
    frm.submit();
});