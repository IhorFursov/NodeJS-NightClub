if(window.location.pathname=='/galereya'){
	for(var i=101;i<=116;i++){
		document.getElementById(i+'').addEventListener('click',getFotoHttp,false);
	}
}
function getFotoHttp(){
			console.log(this.id);
			window.location.pathname+='/'+this.id;
		}
if(window.location.pathname=='/sobitiya'){
		document.getElementById('pin-up').addEventListener('click',getGalereyaHttp,false);
		document.getElementById('dj_list').addEventListener('click',getDjHttp,false);
}
function getGalereyaHttp(){
			console.log(this.id);
			window.location.pathname+='/'+this.id;
		}
function getDjHttp(){
			console.log(this.id);
			window.location.pathname+='/'+this.id;
		}
if(window.location.pathname=='/sobitiya/pin-up'){
	for(var i=117;i<=124;i++){
		document.getElementById(i+'').addEventListener('click',getGirlHttp,false);
	}
}
function getGirlHttp(){
	console.log(this.id);
	window.location.pathname+='/'+this.id;
}