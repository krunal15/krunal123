<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
       <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
       <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
       <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
       <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
</head>
<body>

<!-- The Modal -->
<div class="modal" id="edit">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add User</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
        <form  id="newModalForm">
      <div class="modal-body">
     
       <div class="row">
      
      	 	<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">FirstName:</label>
		 				 <input type="text" class="form-control" id="first_name">
		   			 </div>
		    
   			</div>
   			
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">LastName:</label>
		 				 <input type="text" class="form-control" id="last_name">
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
		 				 <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    			<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  
		   			 </div>
		    
   			</div>
   			
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">MobileNo:</label>
		 				 <input type="text" class="form-control" id="mobileno">
		   			 </div>
		    
   			</div>
   			 
       </div>
        <div class="row">
      	 	<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Salary</label>
		 				 <input type="text" class="form-control" id="salary">
		   			 </div>
		    
   			</div>
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">DOB:</label>
		   				 
		   				 <div class='input-group date' id='datetimepicker1'>
		 				 <input type="text" class="form-control" id="dob">
		 				 <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
		 				 </div>
		 				 
		   			 </div>
		    
   			</div>
   			 
       </div>
       <div class="row">
      	 	
   			 <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
       	 </script>
   			
   			<div class="col-md-6">
       
		   			 <div class="form-group">
		   				 <label for="usr">Age:</label>
		   				 
		 				 <input type="text" class="form-control" id="age">
		 			 </div>
		    
   			</div>
   			 
       </div>
       
       
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
      <button type="button" class="btn btn-success"  value="Submit">Ok</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal" >Close</button>
         
      </div>
   </form>
    </div>
    
  </div>
  
</div>

</body>
<script type="text/javascript">
$(document).ready(function() {
 
  $('#newModalForm').submit(function(e) {
    e.preventDefault();
    
    var first_name = $('#first_name').val();
    var last_name = $('#last_name').val();
    var email = $('#address1').val();
    var email = $('#address2').val();
    var email = $('#email').val();
    var email = $('#mobileno').val();
    var email = $('#dob').val();
    var email = $('#salary').val();
    var email = $('#age').val();
    $(".error").remove();
 
    if (first_name.length < 1) {
      $('#first_name').after('<span class="error">This field is required</span>');
    }
    if (last_name.length < 1) {
      $('#last_name').after('<span class="error">This field is required</span>');
    }
    if (address1.length < 3) {
        $('#address1').after('<span class="error">This field is required</span>');
      }
    if (address2.length < 3) {
        $('#address2').after('<span class="error">This field is required</span>');
      }
    if (email.length < 1) {
      $('#email').after('<span class="error">This field is required</span>');
    } else {
      var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
      var validEmail = regEx.test(email);
      if (!validEmail) {
        $('#email').after('<span class="error">Enter a valid email</span>');
      }
    }
    if (mobileno.length < 8) {
      $('#mobileno').after('<span class="error">mobile must be 10 number</span>');
    }
    if (dob.length < 1) {
        $('#dob').after('<span class="error">This field is required</span>');
      }
    if (salary.length < 1) {
        $('#salary').after('<span class="error">This field is required</span>');
      }
    if (age.length < 1) {
        $('#age').after('<span class="error">This field is required</span>');
      }
  });
 
});



</script>
</html>