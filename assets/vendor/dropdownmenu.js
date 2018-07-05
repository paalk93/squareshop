function toggleDropdown(){
  var dropdownbtn = document.getElementsByClassName("sq-nav-dropdown-content")[0];
  dropdownbtn.classList.toggle("sq-show-dropdown-content")
  var arrow = document.getElementById("togglearrow");
    if(arrow.innerHTML == " \u2193"){
       arrow.innerHTML = " \u2191"
    }
    else {
      arrow.innerHTML = " \u2193"
    }
  }
