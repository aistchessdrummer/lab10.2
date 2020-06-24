function Allm(){
	document.getElementById("Pole").style.left = screen.width/2 - 600 + "px";
}
function getAddress() {
var request;
if (window.XMLHttpRequest) {
request=new XMLHttpRequest();
} else {
request=new ActiveXObject ("Microsoft.XMLHTTP");
}
request.onreadystatechange = function(){
if (request.readyState==4 && request.status==200){
document.getElementById("address").value=request.responseText;
}
};
var phone=document.getElementById("phone").value;
request.open ("POST","coffe.jsp?phone="+phone, true);
request.send();
}