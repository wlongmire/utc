function showDiv(divId) {
	document.getElementById(divId).style.display = "block";
	document.getElementById("link_"+divId).href = "javascript:hideDiv('"+divId+"');";
	document.getElementById("arrow_"+divId).innerHTML = "&#9660;";
}
function hideDiv(divId) {
	document.getElementById(divId).style.display = "none";
	document.getElementById("link_"+divId).href = "javascript:showDiv('"+divId+"');";
	document.getElementById("arrow_"+divId).innerHTML = "&#9658;";
}
function setNav(divId) {
	alert(divId);
	document.getElementById(divId).setAttribute("class","activeNav");
}

// code to make image flippers
var c = 0;
var s;
function photoGalleryCon() { 
	if (c%9==0){ document.getElementById('ctu-img').src = "../images/ctu.jpg"; } 
	if (c%9==1){ document.getElementById('ctu-img').src = "../images/ctu2.jpg"; } 
	if (c%9==2){ document.getElementById('ctu-img').src = "../images/ctu3.jpg"; } 
	if (c%9==3){ document.getElementById('ctu-img').src = "../images/ctu4.jpg"; } 
	if (c%9==4){ document.getElementById('ctu-img').src = "../images/ctu5.jpg"; } 
	if (c%9==5){ document.getElementById('ctu-img').src = "../images/ctu6.jpg"; } 
	if (c%9==6){ document.getElementById('ctu-img').src = "../images/ctu7.jpg"; } 
	if (c%9==7){ document.getElementById('ctu-img').src = "../images/ctu8.jpg"; } 
	if (c%9==8){ document.getElementById('ctu-img').src = "../images/ctu9.jpg"; } 
	c=c+1;
	s=setTimeout("photoGalleryCon()",2000);
} 