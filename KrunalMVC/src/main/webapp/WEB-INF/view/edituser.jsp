<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


  </head>
<body>

<!-- The Modal -->
<div class="modal" id="edit">
  
   <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add User</h4>
        <button type="button" id="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
        <form  id="newModalForm">
     	 <div class="modal-body">
     
     	  <div class="row">
      
      	 		<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">FirstName:</label>
		 				 <input type="text" class="form-control" id="first_name" name="firstName" placeholder="firstName"aria-describedby="inputGroupPrepend" autocomplete="off" required>
		   			 </div>
		    
   				</div>
   			
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">LastName:</label>
		 				 <input type="text" class="form-control" id="last_name" name="LastName.." placeholder="LastName" aria-describedby="inputGroupPrepend" autocomplete="off" required>
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
		 				 <input type="text" class="form-control" id="mobileno" placeholder="Enter Mobile Number..." name="mobile" pattern="^\d{10}$">
		   			 </div>
		    
   			 </div>
   			 
       </div>
        <div class="row">
      	 	<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Salary</label>
		 				 <input type="text" class="form-control" id="salary" placeholder="Please Entre salary.. "name="salary" data-bv-notempty-message="message" aria-describedby="inputGroupPrepend" autocomplete="off" required>
		   			 </div>
		    
   			</div>
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">DOB:</label>
		   				 
		   				 
		 				 <input type="text" class="form-control" id="dob" data-bv-date-format="format" data-bv-digits-message="message"name="birthday" placeholder="YYYY/MM/DD" aria-describedby="inputGroupPrepend" autocomplete="off" required>
		 				 
		 				 
		 				 
		   			 </div>
		    
   			</div>
   			 
       </div>
        
       <div class="row">
   			   <div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Age:</label>
		   				 
		 				 <input type="text"  min="1" max="100"  class="form-control"  placeholder="Please Entre Age.."name="age"data-bv-digits-message="message" aria-describedby="inputGroupPrepend" autocomplete="off" required>
		 			 </div>
		    
   		       	</div>
   			 
              </div>
       
       
        </div>

      <!-- Modal footer -->
	        <div class="modal-footer">
	           <button type="button" class="btn btn-success" id="submit"value="Submit" data-dismiss="modal">Ok</button>
	           <button type="button" class="btn btn-danger" id="close" data-dismiss="modal" >Close</button>
	         
	        </div>
     
    
     </form>
    
    
  </div>
    </div>
</div>

</body>

<script type="text/javascript">

$(document).ready(function() {
    $('#newModalForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	 email: {
                 validators: {
                     notEmpty: {
                         message: 'The email is required and cannot be empty'
                     },
                     emailAddress: {
                         message: 'The input is not a valid email address'
                     }
                 }
             },
             birthday: {
                 validators: {
                     date: {
                         format: 'YYYY/MM/DD',
                         message: 'The value is not a valid date'
                     }
                 }
             },
            
             salary: {
                 validators: {
                     intrger: {
                        
                         message: 'The value is not a valid date'
                     }
                 }
             },
            
             
        }
    });
});


$("#submit").click(function(){
	var developerData = {};

	developerData["firstName"] = $("#firstName").val();
	developerData["lastName"] = $("#lastName").val();
	
	
	$.ajax({
		type : "POST",
		
		url : "/index",
		data : JSON.stringify(developerData),
		dataType : 'json',				
		success : function(data) {
			// Code to display the response.
		}
	});
});
$("#close").click(function() {
	$("#newModalForm")[0].reset();
	  $('#newModalForm').bootstrapValidator("resetForm",true);
});
$('#dob').datepicker({
	uiLibrary: 'bootstrap4'
	});
</script>
</html>