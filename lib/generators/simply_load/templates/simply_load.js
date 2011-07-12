$(document).ready(function() {

    // Load content into the elements with the auto_load class via Ajax
    auto_load_content($(this));

});

function auto_load_content(element){
    $.each($(element.find('.simply_load')), function(){
        $(this).load($(this).attr('data-href'));
    });
}