
$("#signupButton").click(function (e) {
    e.preventDefault();
    var URL = "https://hooks.zapier.com/hooks/catch/175623/rht4c6/";
    var formData = $("#signupForm").serializeObject();

    try {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", URL);
        // xhr.setRequestHeader("Content-type", "application/json");
        xhr.send(JSON.stringify(formData));
        $("#signupForm").fadeOut(400, function(){
            $('#signedUp').hide().html('<p>Thanks! We will let you know ASAP.</p>').fadeIn(400);
        });
    } catch(e) {
        console.error(e);
    }
});
