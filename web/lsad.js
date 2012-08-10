var delta=0.15
var collection;
function floaters() {
	this.items	= [];
	this.addItem	= function(id,x,y,content) {
		document.write('<DIV id='+id+' style="Z-INDEX: 10; POSITION: absolute;  width:80px; height:60px;left:'+(typeof(x)=='string'?eval(x):x)+';top:'+(typeof(y)=='string'?eval(y):y)+'">'+content+'</DIV>');
			var newItem				= {};
			newItem.object			= document.getElementById(id);
			newItem.x				= x;
			newItem.y				= y;
			this.items[this.items.length]		= newItem;
		}
		this.play	= function() {
			collection				= this.items
			setInterval('play()',10);
		}
}

function play() {
	for(var i=0;i<collection.length;i++) {
		var followObj		= collection[i].object;
		var followObj_x		= (typeof(collection[i].x)=='string'?eval(collection[i].x):collection[i].x);
		var followObj_y		= (typeof(collection[i].y)=='string'?eval(collection[i].y):collection[i].y);
		if(followObj.offsetLeft!=(document.body.scrollLeft+followObj_x)) {
			var dx=(document.body.scrollLeft+followObj_x-followObj.offsetLeft)*delta;
			dx=(dx>0?1:-1)*Math.ceil(Math.abs(dx));
			followObj.style.left=followObj.offsetLeft+dx;
		}

		if(followObj.offsetTop!=(document.body.scrollTop+followObj_y)) {
			var dy=(document.body.scrollTop+followObj_y-followObj.offsetTop)*delta;
			dy=(dy>0?1:-1)*Math.ceil(Math.abs(dy));
			followObj.style.top=followObj.offsetTop+dy;
		}
		followObj.style.display	= '';
	}
}	
		
function shLayers(n){
	n.style.visibility="hidden";
}
		
var theFloaters		= new floaters();
theFloaters.addItem('followDiv2',window.screen.width-130,100,'<a href="javascript:popMe()"><img src=ad/ls/dg.gif  border=0  alt="想念你了，老朋友，送上真诚祝福！歌声代表我的心..."/></a><br>');

theFloaters.addItem('followDiv3',6,100,'<a href="javascript:popMe()"><img src=ad/ls/dg.gif  border=0  alt="想念你了，老朋友，送上真诚祝福！歌声代表我的心..."/></a><br>');

theFloaters.play();

function popMe(){
var tmp=window.open("about:blank","",0)
tmp.moveTo(100,120)
tmp.resizeTo(800,500)
tmp.focus()
tmp.location="ad/ls/ls.html"
}