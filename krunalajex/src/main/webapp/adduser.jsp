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
       <script type="text/javascript" src="/path/to/dist/js/bootstrapValidator.min.js"></script>

		<!-- Or use the original one with all validators included -->
		<script type="text/javascript" src="/path/to/dist/js/bootstrapValidator.js"></script>
		
		<!-- Or use the plugin with required validators -->
		<script type="text/javascript" src="/path/to/src/js/bootstrapValidator.js"></script>
		<script type="text/javascript" src="/path/to/src/js/validator/...validator..."></script>
       <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
</head>
<body>

<!-- The Modal -->
<div class="modal" id="myModal">
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
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
       	 </script>
       <div class="row">
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
    $('#newModalForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            firstname: {
                message: 'The firstname is not valid',
                validators: {
                    notEmpty: {
                        message: 'The firstname is required and cannot be empty'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The firstname must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'The firstname can only consist of alphabetical, number and underscore'
                    }
                }
            },
            lastname: {
                validators: {
                    notEmpty: {
                        message: 'The email is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address'
                    }
                }
            },
            address1: {
                validators: {
                    notEmpty: {
                        message: 'The address is required and cannot be empty'
                    },
                    Address1: {
                        message: 'The input is not a valid  address'
                    }
                }
            },
            
            address2: {
                validators: {
                    notEmpty: {
                        message: 'The address is required and cannot be empty'
                    },
                    Address2: {
                        message: 'The input is not a valid  address'
                    }
                }
            }
        },
        email: {
            validators: {
                notEmpty: {
                    message: 'The email is required and cannot be empty'
                },
                emailAddress: {
                    message: 'The input is not a valid email address'
                }
            }
        }
        
    });
});
</script>
</html>