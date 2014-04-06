function makeInquiry(){
	var valid=true;
    $.each(["Name","Email","Phone","City","State","Country","Comment"],function(index,value){
       ele = $("#input"+value);
       if(ele.val()==""){
       	 alert("Please enter "+value);
       	 valid = false;
       	 return false;
       }
     });
     if(valid){
       $.ajax({
       	url: "customers",
       	type: "post",
       	data: $("#contact_form").serialize()
       }).done(function() {
         alert( "Thank you for contatacting us. We will get back you soon..." );
       });
     }
     return false;
}