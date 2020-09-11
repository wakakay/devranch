var outstckoptdis_route = '';
var outstckoptdisJson = '';
var outstckoptdis = {
	'runjs': function(json) {
		if(outstckoptdis_route.indexOf('product/product') != -1) {
			if(typeof json['povids'] !== undefined) { 
				var povids = json['povids'].split(',');
				$('#product option').each(function(){
					if (povids.indexOf($(this).val().toString()) >= 0) {	
						$(this).attr('disabled','disabled');					
					}	
				}); 
				$('#product input[type=\'checkbox\'], #product input[type=\'radio\']').each(function(){
					if (povids.indexOf($(this).val().toString()) >= 0) {	
						$(this).attr('disabled','disabled');	
						$(this).parent().css({"pointer-events": "none", "opacity": "0.7"});				
					}	
				});
			}
		}
	},
	'initjson': function() {
		$.ajax({
			url: 'index.php?route=extension/outstckoptdis/getcache',
			dataType: 'json',
			cache: true,
			success: function(json) {
				outstckoptdisJson = json;
				outstckoptdis_route = json['outstckoptdis_route'];
				outstckoptdis.runjs(json);
			}
 		});
	}
}
$(document).ready(function(){ 
	outstckoptdis.initjson(); 
});