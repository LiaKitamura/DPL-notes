//range is 18-100 if 18 < ask parents if 100 > to old


// functions are like ruby method

// first we are defining a function and assinging it to a variable
var windowLoaded = function() {
  // we need to find the form on the page using .forms[]
  var form = document.forms[0];
  // checking to see if form exists
  if (form) {
  // form on submit is going to go throught the validator which we will make
    form.onsubmit = formValidator;
  }
};

// making formValidator function. needs to return false. explicitly needs to be told.

var formValidator = function () {

// finds the input for age to use below
  var ageInput = this.querySelector('input[name=age]');

// getting age and making it an integer
  var age = parseInt(ageInput.value);

// if it returns false it stops the event from happening
  return false;
};

// custom function being called when loaded
window.onload = windowLoaded;







// --- completed code for above ---

var windowLoaded = function() {
  var form = document.forms[0];
  if (form) {
    form.onsubmit = formValidator;
  }
};

var formValidator = function () {
  var ageInput = this.querySelector('input[name=age]');
  var age = parseInt(ageInput.value);

    if (age < 18) {
      alert('You are too young to be using the web');
      return false;
    } else if (age > 100) {
      alert('You are too old to be using the web');
      return false;
    } else if (age.to_s() == "NaN") {
      alert("You have to actually enter in a number");
    }
    return true;
};

window.onload = windowLoaded;
