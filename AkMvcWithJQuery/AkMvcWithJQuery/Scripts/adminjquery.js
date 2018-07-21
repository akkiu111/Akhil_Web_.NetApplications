$(document).ready(function () {

    $("#Button_ManageUsers").click(function () {
        Button_ManageUsers_Clicking();
    });

    $("#Button_ManageRoles").click(function () {
        Button_ManageRoles_Clicking();
    });

    $("#Button_ManageCourses").click(function () {
        Button_ManageCourses_Clicking();
    });

});




function Button_ManageUsers_Clicking() {
    window.location = "/Login/ManageUsers";
}

function Button_ManageRoles_Clicking() {
    window.location = "/Login/ManageUsers";
}

function Button_ManageCourses_Clicking() {
    window.location = "/Login/ManageUsers";
}






