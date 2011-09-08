$(document).ready(function() {

    // Load content into the elements with the auto_load class via Ajax
    simply_load($(this));

});

function simply_load(element){
    $.each($(element.find('.simply_load')), function(){
    	$this = $(this);
        $(this).load($(this).attr('data-href'),function(data){
        	$this.trigger("simply_load:success", data);
        });
    });
}