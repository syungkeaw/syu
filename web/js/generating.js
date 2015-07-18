$(function(){
	$.get('generate/?id='+getParameterByName('id'), function(res){
		var data = JSON.parse(res);
		if(data.status==1){
			window.location.reload();
		}else{
			$('header').append('<h3>'+data.message+'</h3>');
		}
	});
});

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}