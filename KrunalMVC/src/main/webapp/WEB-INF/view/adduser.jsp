<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

        </head>
<body>

<!-- The Modal -->
<div class="modal" id="adduser">
  
   <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add User</h4>
        <button type="button" id="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
        <form  id="newModalForm" action="index">
     	 <div class="modal-body">
     
     	  <div class="row">
      
      	 		<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">FirstName:</label>
		 				 <input type="text" class="form-control" id="first_name" name="firstName" placeholder="firstName"aria-describedby="inputGroupPrepend" autocomplete="off" required onpaste="return true;">
		   			 </div>
		    
   				</div>
   			
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">LastName:</label>
		 				 <input type="text" class="form-control" id="last_name" name="LastName.." placeholder="LastName" aria-describedby="inputGroupPrepend" autocomplete="off" required onpaste="return true;">
		   			 </div>
		    
   			</div>
   			 
      	 </div>
    	  	 <div class="row">
      		 	<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Address1:</label>
		 				 <textarea class="form-control" id="address1" name="textarea" placeholder="Textarea" aria-describedby="inputGroupPrepend" autocomplete="off" required></textarea>
		   		
		   			 </div>
		    
   				</div>
   			
   				<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Address2:</label>
		 				 <textarea class="form-control" id="address2" name="textarea" placeholder="Textarea" aria-describedby="inputGroupPrepend" autocomplete="off" required></textarea>
		   			 </div>
		    
   				</div>
   			 
       		</div>
      	  <div class="row">
      	 	 <div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="exampleInputEmail1">Email:</label>
		 				 <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"	data-bv-emailaddress-message="message"data-bv-emailaddress-multiple="multiple"aria-describedby="inputGroupPrepend" autocomplete="off" required>
    					
		   			 </div>
		    
   			 </div>
   			
   			 <div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Mobile:</label>
		 				 <input type="text" class="form-control" id="mobile" placeholder="Enter Mobile Number..." name="mobile" maxlength="10" pattern="^\d{10}$"name="onlyNumbers" onkeypress="return isNumber(event)" onpaste="return false;">
		   			 </div>
		    
   			 </div>
   			 
       </div>
        <div class="row">
      	 	<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Salary</label>
		 				 <input type="text" class="form-control CurrentInput"  placeholder="Please Entre salary.. "name="salary" data-bv-notempty-message="message" aria-describedby="inputGroupPrepend" autocomplete="off" required name="onlyNumbers" onkeypress="return isNumber(event)" onpaste="return false;">
		   			 </div>
		    
   			</div>
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">DOB:</label>
		   				 
		   				 
		 				 <input id="dob" type="text" class="form-control" id="dob" data-bv-date-format="format" data-bv-digits-message="message"name="birthday" placeholder="YYYY/MM/DD" aria-describedby="inputGroupPrepend" autocomplete="off" required onkeypress="return isNumber(event)" onpaste="return false;">
		 				 
		 				 
		 				 
		   			 </div>
		    
   			</div>
   			 
       </div>
        
       <div class="row">
   			   <div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Age:</label>
		   				 
		 				 <input type="text"  min="1" max="100" maxlength="2" class="form-control"  placeholder="Please Entre Age.."name="age"data-bv-digits-message="message" aria-describedby="inputGroupPrepend" autocomplete="off" required name="onlyNumbers" onkeypress="return isNumber(event)" onpaste="return false;">
		 			 </div>
		    
   		       	</div>
   			 
              </div>
       
       
        </div>

      <!-- Modal footer -->
	        <div class="modal-footer">
	           <button type="button" class="btn btn-success" id="submit"  value="Submit" data-dismiss="modal" >Ok</button>
	           <button type="button" class="btn btn-danger" id="close" data-dismiss="modal" >Close</button>
	         
	        </div>
     
    
     </form>
    
    
  </div>
    </div>
</div>

</body>

<script type="text/javascript">

$(document).ready(function() {
    
});


$("#submit").click(function(){
	 var myform = document.getElementById("newModalForm");
	 var fd = $('#newModalForm').serialize();
	
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url :"${pagecontext.request.contextpath}/user/save",
		data : fd,
		success : function(data) {
			console.log(data)
			
		},error:function(error){
			console.log("in error function");
		}
	});
});



$("#close").click(function() {
	$("#newModalForm")[0].reset();
	  $('#newModalForm').bootstrapValidator("resetForm",true);
});

$("#dob").datepicker({
	 	
	 	maxDate:0
	});
	
	

$('input.CurrentInput').on('blur',function(){
	
	var number = 123456.789;
		console.log(new Intl.NumberFormat('en-IN').format(number));
	
});


/* function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if ( (charCode > 31 && charCode < 48) || charCode > 57) {
        return false;
    }
    return true;
} */
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if ( (charCode > 31 && charCode < 48) || charCode > 57) {
        return false;
    }
    return true;
} 


</script>
</html>