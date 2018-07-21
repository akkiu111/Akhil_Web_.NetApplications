//$(document).ready(function () {



//});

function insertion() {
    debugger;
    var Params = {

        name: $("#txtname").val(),
        age: $("#txtage").val(),


    };


    $.ajax({
        type: "POST",
        url: "Home.aspx/insertData",
        data: JSON.stringify({ datainfo : Params }),
        contentType: "application/json; charset-utf-8",
        dataType:"json",
        success: function (data, status) {
            //alert(data.d)

            if ((data.d) == 1) {
                window.location = "student.aspx";
            }
            else{
                window.location = "error.aspx";
            }

            //data.d 
            //$("#div1").html(result);
        },
            error: function(request, status, error) {
                //alert(request.responseText);
                window.location = "error.aspx";
            }
        
    });


}