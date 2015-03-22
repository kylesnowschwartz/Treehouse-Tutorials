//problem: hints are shown even when form is valid
//solution: hide hints when valid input is given
  var $password = $('#password');
  var $confirmPassword = $('#confirm_password');
  var $username = $("#username");
//hide hints
  $('form span').hide();

function isUsernamePresent() {
  return $username.val().length >0;
}

function isPasswordValid() {
  return $password.val().length > 8;
}

function arePasswordsMatching(){
  return $('#password').val() === $confirmPassword.val();
}

function canSubmit () {
  return isPasswordValid() && arePasswordsMatching() && isUsernamePresent();
}

function passwordEvent(){
  //find out of password is valid
    if (isPasswordValid()) {
      //hide hint if valid
      $password.next().hide();
    } else {
      //show hint if invalid
      $password.next().show();
    }
}

function confirmPasswordEvent() {
  //find out if password and confirmation match
  if(arePasswordsMatching()) {
    //hide hint if matched
    $confirmPassword.next().hide();
  } else {
    //show hint if not matched
     $confirmPassword.next().show();
  }
}

function enableSubmitEvent() {
  $("#submit").prop("disabled", !canSubmit());
}

//when event happens on password input
 $password.focus(passwordEvent).keyup(passwordEvent).keyup(confirmPasswordEvent).keyup(enableSubmitEvent);


//when event happens on confirmation
$confirmPassword.focus(confirmPasswordEvent).keyup(confirmPasswordEvent).keyup(enableSubmitEvent);

enableSubmitEvent();
  