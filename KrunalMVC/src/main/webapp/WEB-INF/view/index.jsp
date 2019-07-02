
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
  <html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrapmn and css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
   
  <!-- DataTable and CSS -->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.css" integrity="sha256-/OSilKbt1vJDYG2AHl0WH22osBRmnFgP7X55u1s8hek=" crossorigin="anonymous" />	  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css" integrity="sha256-YvAujCECPPslDy9IUX/t20rU7WANfRpYMtIusXyn/ho=" crossorigin="anonymous" />	
  
  <!-- jquery -->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.js" integrity="sha256-o1euaz1vwPXBTxRl9OxyDQuac7lF8i92X56aky0gPEE=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js" integrity="sha256-PbFF1Mdg86urwOYXWNJPP4z5Ge9KLp6KXX1NURQY8Ho=" crossorigin="anonymous"></script>
  <!-- javascript -->
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
 <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
   
  
</head>
      
      
<body>
	<div class="container">
	    <!-- add user button -->
	    <div class="row">
	    	<div class="col-md-12" style="padding-top:25px">
	    		<div class="float-right"> 
	    		<button type="button" class="btn btn-info" data-toggle="modal" data-target="#adduser">Add User</button>
		    			</div>
				</div>    	
	    	</div>
	    
	    
	    <div class="row">
	    <div class="col-md-12" style="padding-top:25px">
	    <div class="table-responsive">
  				<table class="table" id="example">
   						<thead>
					        <tr>
					        		<th>Id</th>
					         		<th>FirstName</th>
					                <th>LastName</th>
					                <th>Address1</th>
					                <th>Address2</th>
					                <th>Email</th>
					                <th>Mobile</th>
					                <th>DOB</th>
					                <th>Salary</th>
					                <th>Age</th>
					                <th>Edit</th>
					                <th>Delete</th>
	        				</tr>
	    				</thead>
	    			<tbody>
	    			 <tr>
	    				<td>123</td>
	    				<td>krunal</td>
	    				<td>patel</td>
	    				<td>jhfsdfbhjfb</td>
	    				<td>irgfjiuredjg</td>
	    				<td>krunal@gmail.com</td>
	    				<td>130032234</td>
	    				<td>1/02/1993</td>
	    				<td>12000</td>
	    				<td>13</td>
						<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td> 
					 </tr>
	    			<tr>
	    				<td>123</td>
	    				<td>krunal</td>
	    				<td>patel</td>
	    				<td>jhfsdfbhjfb</td>
	    				<td>irgfjiuredjg</td>
	    				<td>krunal@gmail.com</td>
	    				<td>130032234</td>
	    				<td>1/02/1993</td>
	    				<td>12000</td>
	    				<td>13</td>
						<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
	    				</tr>
	    				
	    				<tr>
	    				<td>123</td>
	    				<td>krunal</td>
	    				<td>patel</td>
	    				<td>sdhfusdhu@gmail,com</td>
	    				<td>2535556</td>
	    				<td>1f/3/4232</td>
	    				<td>130032</td>
	    				<td>12</td>
		    			<td>123</td>
		    			<td>13</td>
		    			<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
						<td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
	
	    				</tr>
	    				<tr>
	    				
	    				<td>16</td>
	    				<td>rohan</td>
	    				<td>patel</td>
	    				<td>sdhfusdhu@gmail,com</td>
	    				<td>2535556</td>
	    				<td>1f/3/4232</td>
	    				<td>130032</td>
	    				<td>12</td>
	    				<td>123</td>
	    				<td>13</td>
	    				<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
	
	    				</tr>
	    				<tr>
	    				
	    				<td>15</td>
	    				<td>rohit</td>
	    				<td>patel</td>
	    				<td>sdhfusdhu@gmail,com</td>
	    				<td>2535556</td>
	    				<td>1f/3/4232</td>
	    				<td>130032</td>
	    				<td>12</td>
	    				<td>123</td>
	    				<td>13</td>
	    				<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
	
	    				</tr>
	    				<tr>
	    				
	    				<td>12</td>
	    				<td>krupal</td>
	    				<td>patel</td>
	    				<td>sdhfusdhu@gmail,com</td>
	    				<td>2535556</td>
	    				<td>1f/3/4232</td>
	    				<td>130032</td>
	    				<td>12</td>
	    				<td>123</td>
	    				<td>13</td>
	    				<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
	
	    			</tr>
	    				<tr>
	    				<td>13</td>
	    				<td>jay</td>
	    				<td>patel</td>
	    				<td>sdhfusdhu@gmail,com</td>
	    				<td>2535556</td>
	    				<td>1f/3/4232</td>
	    				<td>130032</td>
	    				<td>12</td>
	    				<td>123</td>
	    				<td>13</td>
	    				<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
	    			</tr>
	    				</tbody>
	    						
	    			 <tfoot>
           						 <tr>
              						<th>Id</th>
					         		<th>FirstName</th>
					                <th>LastName</th>
					                <th>Address1</th>
					                <th>Address2</th>
					                <th>Email</th>
					                <th>Mobile</th>
					                <th>DOB</th>
					                <th>Salary</th>
					                <th>Age</th>
					                <th>Edit</th>
					                <th>Delete</th>
        					  	  </tr>
      					  </tfoot>
	    				
					 </tbody>
  				</table>
  				
			</div>
	  </div>
	    
	    
</div>


	

</div>

 		<jsp:include page="adduser.jsp"></jsp:include>
	 	 <jsp:include page="edituser.jsp"></jsp:include>
	    <jsp:include page="delete.jsp"></jsp:include>

</body>
<script>

	$(document).ready(function() {
		
		
		$.ajax({
			type : "GET",
			contentType : "application/json",
			url : "${pagecontext.request.contextpath}/user/index",
			success : function(data) {
				
				 $.each(response.d, function(index, value) {  
	                    var tr = "<tr>";  
	                    tr += "<td>" + value.FirstName + "</td>";  
	                    tr += "<td>" + value.LastName + "</td>";  
	                    tr += "<td>" + value.Address1 + "</td>";
	                    tr += "<td>" + value.Address2 + "</td>";
	                    tr += "<td>" + value.Email + "</td>";  
	                    tr += "<td>" + value.Mobile + "</td>";  
	                    tr += "<td>" + value.DOB + "</td>"; 
	                    tr += "<td>" + value.Salary + "</td>"; 
	                    tr += "<td>" + value.Age + "</td>"; 
	                    tr += "<td>" + "<input type='button' id='" + value.UserID + "' onclick='CallMe(" + value.UserID + ")' value='Delete'>" + "</td>" + "</tr>";  
	                    tr += "<td>" + "<input type='button' id='" + value.UserID + "' onclick='CallMe(" + value.UserID + ")' value='Edit'>" + "</td>" + "</tr>";  
		              
	                    $("#tBody").append(tr);  
	                })	
				
				
			}
		});
	    $("#example").DataTable();
	    

      
	  });
	
</script>
</html>
 
