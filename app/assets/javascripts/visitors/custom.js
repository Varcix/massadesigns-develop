$(document).ready(function() {

    // $(function(){
    //     $("#virtualstaging1").twentytwenty();
    //     $("#virtualstaging2").twentytwenty();
    //     $("#virtualstaging3").twentytwenty();
    //     $("#virtualstaging4").twentytwenty();
    //     $("#virtualstaging5").twentytwenty();
    //     $("#virtualstaging6").twentytwenty();
    // });

    $(document).on("contextmenu",function(e){
      if(e.target.nodeName != "INPUT" && e.target.nodeName != "TEXTAREA")
           e.preventDefault();
    });

    // Helper Functions
    $('.back-button').click(function(e){
      history.back();
    });

    // Portfolio Init
    $('[data-fancybox="gallery"]').fancybox({});

    // Removing Active class on load
    $("ul.nav li.active").each(function() { $(this).removeClass('active'); });
    $('ul.nav li#contact_link').addClass('active');


    $('#send').bind({
        click: function(event) {
            $('input#name, input#email, textarea#description').css('border','1px solid #1F1F1F');
            $('#status').html("");

            if($('input#name').val() == "") {
                $('input#name').css('border','1px solid red');
                $('#status').css('color', 'red');
                $('#status').html("missing name");
                return;
            }
            if($('input#email').val() == "") {
                $('input#email').css('border','1px solid red');
                $('#status').css('color', 'red');
                $('#status').html("missing email");
                return;
            }
            if($('textarea#description').val() == "") {
                $('textarea#description').css('border','1px solid red');
                $('#status').css('color', 'red');
                $('#status').html("missing description");
                return;
            }

            // show loading indicator
            $('#send').html("").css('background-position','center').css('background-repeat','no-repeat').css('background-size','34px 28px').css('background-image','url(/assets/ajax_loader_metal_512.gif)');

            var data = {};
            data['name'] = $('input#name').val() || "";
            data['from'] = $('input#email').val() || "";
            data['phone'] = $('input#phone').val() || "";
            data['address'] = $('input#address').val() || "";
            data['city'] = $('input#city').val() || "";
            data['zipcode'] = $('input#zipcode').val() || "";
            data['description'] = $('textarea#description').val() || "";

            $.ajax({
                url: 'email',
                data: data,
                dataType: 'json',
                cache: false,
                type: 'POST',
                success: function(response) {
                    $('#send').css('background-image','none');
                    $('input#name, input#email, textarea#description').css('border','1px solid #1F1F1F');
                    $('#send').html("Send");
                    $('#status').css('color', 'green');
                    $('#status').html("Your message has been received");
                },
                error: function(response) {
                    $('#send').css('background-image','none');
                    $('input#name, input#email, textarea#description').css('border','1px solid #1F1F1F');
                    $('#send').html("Send");
                    $('#status').css('color', 'red');
                    $('#status').html("Message could not be sent");
                }
            });
        }
    });
});
