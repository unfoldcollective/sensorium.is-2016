$(document).ready(function(){
    $('.toggletext-button').click(function(){
        var $button = $(this);
        var targetclass = $(this).data('targetclass');
        var invtext = $(this).data('invtext');
        $('.'+targetclass).slideToggle('slow', function() {
            $button.data('invtext', $button.text());
            $button.text(invtext);     
        });     
    });
});