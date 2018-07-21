function javaScriptValidation() {

    var username = document.getElementById('username').value;	
	var emailid = document.getElementById('emailid').value;
    var passwords = document.getElementById('passwords').value;
    var confirmpassword = document.getElementById('confirmpassword').value;
		var phonenumber = document.getElementById('phonenumber').value;
    


    if (username == "") {
        document.getElementById('susername').innerHTML = " *Please enter Username";
        return false;
    }


    if ((username.length <= 3) || (username.length > 20)) {
        document.getElementById('susername').innerHTML = " *Username must be between 3 and 20 characters";
        return false;
    }
    if (!isNaN(username)) {
        document.getElementById('susername').innerHTML = " *Username contains only characters";
        return false;

    }
	
	

    if (emailid == "") {
        document.getElementById('semailid').innerHTML = " *Please Enter Email";
        return false;
    }
    if (emailid.indexOf('@') <= 0) {
        document.getElementById('semailid').innerHTML = " *Invalid Email Address";
        return false;

    }
    if ((emailid.charAt(emailid.length - 4) != '.') && (emailid.charAt(emailid.length - 3) != '.')) {
        document.getElementById('semailid').innerHTML = " *Invalid Email Address";
        return false;

    }
	

    if (passwords == "") {


        document.getElementById('spassword').innerHTML = " *Please enter Password";
        return false;
    }
    if ((passwords.length <= 5) || (passwords.length > 20)) {
        document.getElementById('spassword').innerHTML = " *Password must be between 5 and 20 characters";
        return false;
    }


    if (confirmpassword == "") {
        document.getElementById('sconfirmpassword').innerHTML = " *Please Confirm Password";
        return false;
    }
    if (passwords != confirmpassword) {
        document.getElementById('sconfirmpassword').innerHTML = " *Passwords are not matching";
        return false;
    }

 if (phonenumber == "") {
        document.getElementById('sphonenumber').innerHTML = " *Please enter Phone Number";
        return false;
    }
    if (isNaN(phonenumber)) {
        document.getElementById('sphonenumber').innerHTML = " *Only digits are allowed";
        return false;
    }
    if (phonenumber.length != 10) {
        document.getElementById('sphonenumber').innerHTML = " *Please enter 10 digit Phone number";
        return false;

    }

}

function cancellation(){
	
	if(confirm("Do you want to cancel the Registration?")){
		 	
		 document.getElementById('username').value ="";	
document.getElementById('emailid').value = "";
   document.getElementById('passwords').value = "";
    document.getElementById('confirmpassword').value ="";
		document.getElementById('phonenumber').value="";
		document.getElementById('username').focus();
	}
	else{
		document.getElementById('username').focus();
	}
}



