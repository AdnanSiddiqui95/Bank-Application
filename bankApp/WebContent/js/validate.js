function checkBlank()
{
if(document.getElementById("uid").value=="")
	{alert("User id is required");
	return false;
	}
if(document.getElementById("pass").value=="")
{alert("Password id is required");
return false;
}
return true;
}
function activeLink(link)
{
	document.getElementById(link).style.backgroundColor="green";
	document.getElementById(link).style.color="white";
	}
function matchPassword()
{
	
	var pa1=document.getElementById("pass1").value;
	var pa2=document.getElementById("pass2").value;
	if(pa1!=pa2)
		{
		document.getElementById("error").innerHTML="Confirm password does not match with password";
		return false;
		}
		return true;
	}