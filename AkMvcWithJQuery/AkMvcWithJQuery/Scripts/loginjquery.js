﻿
$(document).ready(function () {
$("#Button_LogIn").click(function () {

    var counter = 1;
    var emailid = $('#emailid').val();
    var password = $('#password').val();
    var emailregex = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    var passwordregex = /^(?=.*\d).{6,15}$/;


    if (!emailid.match(emailregex) || emailid.length == 0) {
        $('#error_email').text(" Please Enter Valid Email in the format abc@gmail.com");
        counter = 0;

    }

    if (!password.match(passwordregex) || password.length == 0) {
        $('#error_pwd').text(" Please Enter Valid Password between 6-15 length with atleast a letter, a number ");
        counter = 0;
    }

    if (counter == 1) {
        $('#error_email').text("");
        $('#error_pwd').text("");
        Button_LogIn_Clicking();
    }

    });


$("#Button_CancelLogIn").click(function () {
    $('#emailid').val("");
    $('#password').val("");
    $('#error_email').text("");
    $('#error_pwd').text("");
});


$('#emailid').blur(function () {

    $('#error_email').text("");

});

$('#password').blur(function () {

    $('#error_pwd').text("");

});
});


function Button_LogIn_Clicking() {


    var Params = {

        Email: $("#emailid").val(),
        Password: $("#password").val()


    };


    $.ajax({
        type: "POST",
        url: "/Login/ValidateUser_Click",
        data: JSON.stringify({ usersInfo: Params }),
        contentType: "application/json; charset-utf-8",
        dataType: "json",
        success: function (data, status) {

            
            if ((data) == 1) {
                window.location = "/Login/Admin";
            }
            else if ((data) == 2) {
                window.location = "/Login/Trainer";
            }

            else if ((data) == 3) {
                window.location = "/Login/Student";
            }

            else {
                $('#error_login').text("No such email and password exists in the database");
                $('#emailid').focus();
            }

        },
        error: function (request, status, error) {


        }

    });


}





