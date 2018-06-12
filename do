window.onload = init;
window.onresize = resizeboard;
var maindiv;
var canvas = null, ctx = null;

var pos = 332;
function init() {
    initPlayGround();
}
function initPlayGround() {
    document.getElementById("playGround").style.display = "";
    maindiv = document.getElementById("main");
    canvas = document.getElementById("gameboard");
    ctx = canvas.getContext("2d");

    ctx.font = "20px helvetica"
    ctx.globalAlpha = 1.0;
    canvas.setStyle = function (styleMap) {
        var styleString = new String();
        for (i in styleMap) {
            styleString += i + ':' + styleMap[i] + '; ';
        }
        canvas.setAttribute('style', styleString);
    }
    var canvasStyle = {
        'background': '#00aaff',
        'border': '1px solid grey'
    };
    canvas.setStyle(canvasStyle);
    drawTheBoard();
}
function drawTheBoard() {
    refreshBoard();
    drawSkyGradient();

    var imgData=ctx.createImageData(tileWidth,tileWidth);
for (var i=0;i<imgData.data.length;i+=4)
  {
  imgData.data[i+0]=255;
  imgData.data[i+1]=0;
  imgData.data[i+2]=0;
  imgData.data[i+3]=255;
  }
  ctx.putImageData(imgData,0,0);

var imgData=ctx.createImageData(tileWidth,tileWidth);
for (var i=0;i<imgData.data.length;i+=4)
  {
  imgData.data[i+0]=255;
  imgData.data[i+1]=102;
  imgData.data[i+2]=102;
  imgData.data[i+3]=255;
  }
ctx.putImageData(imgData,0,tileWidth);

var imgData=ctx.createImageData(tileWidth,tileWidth);
for (var i=0;i<imgData.data.length;i+=4)
  {
  imgData.data[i+0]=0;
  imgData.data[i+1]=32;
  imgData.data[i+2]=128;
  imgData.data[i+3]=255;
  }
ctx.putImageData(imgData,canvasWidth-tileWidth,canvasWidth-tileWidth);

var imgData=ctx.createImageData(tileWidth,tileWidth);
for (var i=0;i<imgData.data.length;i+=4)
  {
  imgData.data[i+0]=128;
  imgData.data[i+1]=159;
  imgData.data[i+2]=255;
  imgData.data[i+3]=255;
  }
ctx.putImageData(imgData,canvasWidth-tileWidth,canvasWidth-2*tileWidth);

    
    for (var x = 0; x < 7; x++){
                 ctx.rect(tileWidth*x,0,tileWidth,tileWidth);
                ctx.stroke();
                 
                            }
                            for (var x = 0; x < 8; x++){
                 ctx.rect(0,tileWidth*x,tileWidth,tileWidth);
                ctx.stroke();
                 
                            }
                            for (var x = 1; x < 7; x++){
                 ctx.rect(tileWidth*x,canvasHeight-tileWidth,tileWidth,tileWidth);
                ctx.stroke();
                 
                            }
                            for (var x = 0; x < 8; x++){
                 ctx.rect(canvasWidth-tileWidth,tileWidth*x,tileWidth,tileWidth);
                ctx.stroke();
                 
                            }
        }
    


function refreshBoard() {
    canvasWidth = window.innerHeight;
    canvasHeight = window.innerHeight;
    maindiv.style.width = canvasWidth + "px";
    maindiv.style.height = canvasWidth + "px";
    ctx.canvas.width = canvasWidth;
    ctx.canvas.height = canvasWidth;

    tileWidth = canvasWidth / 8;
}
function resizeboard() {
    refreshBoard();
    drawTheBoard();
    updateAllPlanes();
    //handcount = handcount == 0 ? 0 : handcount - 1;
    changeHands();
    if (!onmobile)
        document.getElementById("buttondiv").style.visibility = "";
}
function drawSkyGradient() {
    var skyGradient = ctx.createLinearGradient(0, 0, 0, canvasHeight);
    skyGradient.addColorStop(0, '#ffffff');
    skyGradient.addColorStop(1, '#ffffff');
    ctx.fillStyle = skyGradient;
    ctx.fillRect(0, 0, canvasWidth, canvasHeight);
    
}
function drawARegularTile(color, width) {
    

var imgData=ctx.createImageData(width,width);
for (var i=0;i<imgData.data.length;i+=4)
  {
  imgData.data[0]=255;
  imgData.data[1]=0;
  imgData.data[2]=0;
  imgData.data[3]=255;
  }

return imgData;
}
document.getElementById("roll").addEventListener("click", random);

function random()
{
    var rand=Math.floor((Math.random() * 6) + 1);
document.getElementById("p3").innerHTML = rand;

myMove(rand);
}
document.getElementById("animate").style.width =tileWidth 
document.getElementById("animate").style.height =tileWidth;
function myMove(rand) {
  /*var elem = document.getElementById("animate");*/   
  
      pos=pos+tileWidth; 
      
     document.getElementById("animate").style.left = (rand-1)*(tileWidth)+ pos + 'px'; 
    
  }

