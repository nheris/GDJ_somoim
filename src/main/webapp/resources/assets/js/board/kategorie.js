let notice = document.getElementById("notice");
let kategorie = document.getElementById("kategorie");
let etc = document.getElementById("etc");
let path = document.getElementById("path");

notice.addEventListener("click", (e) => {
    // let ev = document.createAttribute("class");
    // ev.value = "clockOk";
    // notice.setAttributeNode(ev);
    e.target.style.backgroundColor = "red";
    console.log("gd");
});
