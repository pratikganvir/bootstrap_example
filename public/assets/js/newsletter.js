$("#subscribe").click(function(){
  $.ajax({
       	url: "/home/subscribe_newsletter",
       	type: "post",
       	data: {email: $("#news_email").val()}
       }).done(function() {
         alert( "Thank you for subscribing newsletter." );
         $("#news_email").val("");
       });
});