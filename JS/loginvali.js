/**
 * 
 */

function validation() {

    console.log("sdfsfsdfsf");
    var UserName = document.getElementById('txt_Uname');
    var Password = document.getElementById('txt_pw');
    

    var valid = true;
    valid = Empty(UserName.value.length, "User Name must required");
    if (valid == true) {
        valid = Empty(Password.value, "please enter Password");
        if (valid == true) {
                    alert("successfully Login");
                }
            }
        
    

}

function Empty(value, message) {
    if(value ==0)
    {
        alert(message);
        return false;
    }
    return true;
}