var slideCol = document.getElementById("myRange");
var y = document.getElementById("f");
y.innerHTML = slideCol.value;

slideCol.oninput = function() {
y.innerHTML = this.value;
}


var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
    output.innerHTML = this.value;
}

