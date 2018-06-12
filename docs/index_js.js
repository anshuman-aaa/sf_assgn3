//script
function myinst()
{
	mywindow=window.open("aaa.html", "","width=500, height=500" )
	
	
}
function close(){
	window.close()
}
function my0(){
	document.forms["calc"]["display"].value+=0;
}
function my1(){
	document.forms["calc"]["display"].value+=1;
}
function my2(){
	document.forms["calc"]["display"].value+=2;
}
function my3(){
	document.forms["calc"]["display"].value+=3;
}
function my4(){
	document.forms["calc"]["display"].value+=4;
}
function my5(){
	document.forms["calc"]["display"].value+=5;
}
function my6(){
	document.forms["calc"]["display"].value+=6;
}
function my7(){
	document.forms["calc"]["display"].value+=7;
}
function my8(){
	document.forms["calc"]["display"].value+=8;
}
function my9(){
	document.forms["calc"]["display"].value+=9;
}
function myadd(){
	document.forms["calc"]["display"].value+="+";
}
function mycom(){
	document.forms["calc"]["display"].value+=",";
}
function mydot(){
	document.forms["calc"]["display"].value+=".";
}
function mysub(){
	document.forms["calc"]["display"].value+="-";
}
function mydiv(){
	document.forms["calc"]["display"].value+="/";
}
function mymult(){
	document.forms["calc"]["display"].value+="*";
}
function mysin(){
	document.forms["calc"]["display"].value=Math.sin(document.forms["calc"]["display"].value);
}
function myasin(){
	document.forms["calc"]["display"].value=Math.asin(document.forms["calc"]["display"].value);
}
function myacos(){
	document.forms["calc"]["display"].value=Math.acos(document.forms["calc"]["display"].value);
}
function myatan(){
	document.forms["calc"]["display"].value=Math.atan(document.forms["calc"]["display"].value);
}
function mytan(){
	document.forms["calc"]["display"].value=Math.tan(document.forms["calc"]["display"].value);
}
function mylog(){
	document.forms["calc"]["display"].value=Math.log(document.forms["calc"]["display"].value);
}
function mysqrt(){
	document.forms["calc"]["display"].value=Math.sqrt(document.forms["calc"]["display"].value);
}
function mysqr(){
	document.forms["calc"]["display"].value=Math.pow(document.forms["calc"]["display"].value,2);
}
var x,y;
function myfact(x){
	
	if(x==0) return 1;
	else
		return x*myfact(x-1);
}

function myhcf(a,b){
	let dataArray = Array.from(x.toString());
	x=dataArray[0];
	y=dataArray[2];
	var c=function hcf(x,y){
	

	if (x==0 || y==0) return 0;
	if (x==y) return x;
	if (x>y) return hcf(x-y,y);
	else return hcf(x,y-x);
}
return c;
}

function lcm(x,y){
	return (x*y)/hcf(x,y);
}

	
