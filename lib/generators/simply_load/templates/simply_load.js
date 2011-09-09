$(document).ready(function() {

    // Load content into the elements with the auto_load class via Ajax
    simply_load($(this));

});

function simply_load(element){
    $.each($(element.find('.simply_load')), function(){
    	$this = $(this);
    	$this.bind("reload", function(timer){
    		$this.load($this.attr('data-href'),function(data){
	        	$this.trigger("simply_load:success", data);
	        });	
    	});
    	$this.trigger("reload");        
    });

    $.each($(element.find('.simply_load_timed')), function(){
    	window.setInterval('$this.trigger("reload");', $(this).attr("data-timer"));
    });
}