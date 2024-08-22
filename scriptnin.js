// script.js

// Function to validate the form inputs
function validateForm() {
    // Get the form element
    var form = document.querySelector(".form");
    // Get the input elements
    var name = form.elements["name"];
    var email = form.elements["email"];
    var phone = form.elements["phone"];
    var graduation_year = form.elements["graduation_year"];
    var current_position = form.elements["current_position"];
    var achievements = form.elements["achievements"];
    var feedback = form.elements["feedback"];
    var newsletter = form.elements["newsletter"];
    var magazine = form.elements["magazine"];
    // Define the regular expressions for validation
    var nameRegex = /^[a-zA-Z ]+$/; // Only alphabets and spaces
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/; // Valid email format
    var phoneRegex = /^[0-9]{10}$/; // Only 10 digits
    var yearRegex = /^[0-9]{4}$/; // Only 4 digits
    // Define the error messages
    var nameError = "Please enter a valid name.";
    var emailError = "Please enter a valid email.";
    var phoneError = "Please enter a valid phone number.";
    var yearError = "Please enter a valid graduation year.";
    // Define the flag for validation
    var isValid = true;
    // Validate the name input
    if (!nameRegex.test(name.value)) {
        // Display the error message
        alert(nameError);
        // Set the flag to false
        isValid = false;
    }
    // Validate the email input
    if (!emailRegex.test(email.value)) {
        // Display the error message
        alert(emailError);
        // Set the flag to false
        isValid = false;
    }
    // Validate the phone input
    if (phone.value && !phoneRegex.test(phone.value)) {
        // Display the error message
        alert(phoneError);
        // Set the flag to false
        isValid = false;
    }
    // Validate the graduation year input
    if (!yearRegex.test(graduation_year.value)) {
        // Display the error message
        alert(yearError);
        // Set the flag to false
        isValid = false;
    }
    // Return the flag value
    return isValid;
}

// Function to submit the form data
function submitForm() {
    // Validate the form inputs
    if (validateForm()) {
        // Get the form element
        var form = document.querySelector(".form");
        // Get the input elements
        var name = form.elements["name"];
        var email = form.elements["email"];
        var phone = form.elements["phone"];
        var graduation_year = form.elements["graduation_year"];
        var current_position = form.elements["current_position"];
        var achievements = form.elements["achievements"];
        var feedback = form.elements["feedback"];
        var newsletter = form.elements["newsletter"];
        var magazine = form.elements["magazine"];
        // Create an object to store the form data
        var formData = {
            name: name.value,
            email: email.value,
            phone: phone.value,
            graduation_year: graduation_year.value,
            current_position: current_position.value,
            achievements: achievements.value,
            feedback: feedback.value,
            newsletter: newsletter.checked,
            magazine: magazine.checked
        };
        // Convert the object to a JSON string
        var jsonData = JSON.stringify(formData);
        // Send the JSON string to a server or a database
        // For example, using the fetch API
        /*
        fetch("https://example.com/api/register", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: jsonData
        })
        .then(response => response.json())
        .then(data => {
            // Handle the response data
            console.log(data);
        })
        .catch(error => {
            // Handle the error
            console.error(error);
        });
        */
        // For demonstration, just display the JSON string in an alert
        alert("Your form data is: " + jsonData);
        // Reset the form inputs
        form.reset();
    }
}

// Add an event listener to the submit button
var submitButton = document.querySelector(".form button");
submitButton.addEventListener("click", submitForm);
