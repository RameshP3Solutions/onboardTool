$('#Delete').click(function()
    {
        $(".hidepencil").hide();
        $(".hidedelete").toggle();
    });
    $('#Edit').click(function()
    {
        $(".hidedelete").hide();
        $(".hidepencil").toggle();
    });