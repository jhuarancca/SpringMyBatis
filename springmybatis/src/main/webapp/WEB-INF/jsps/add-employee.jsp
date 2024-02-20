<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Employee</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
	<h1> Add employee</h1>
	<s:form modelAttribute="employee" action="saveProcess">
		<input type="hidden" value="${employee.hobbies}" id="hiddenTxt"/>
		<s:hidden path="id" />
		
		Name : <s:input path="fullname"/> <br/>
		Email : <s:input path="email"/> <br/>
		Gender : <s:radiobutton path="gender" value="Male"/>Male
		<s:radiobutton path="gender" value="Female"/>Female <br/>
		
		Interest : <s:checkbox path="hobbies" value="Sports"/>Sports <br/>
		<s:checkbox path="hobbies" value="Books"/>Books<br/>
		<s:checkbox path="hobbies" value="Swimming"/>Swimming<br/>
		<s:checkbox path="hobbies" value="Cycling"/>Cycling<br/>
		
		Country : <s:select path="country"> 
		<s:option value='India'> India </s:option>
		<s:option value='Peru'> Peru </s:option>
		<s:option value='Australia'> Australia </s:option>
		<s:option value='America'> America </s:option>
		<s:option value='Chile'> Chile </s:option>
		</s:select><br/>
		
		Address: <s:textarea path="address"/> <br/>
		
		<input type="submit" value="Save Employee">
		 
	</s:form>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/> 
	<script>
		$(document).ready(function(){
		
			var hobbies=$("#hiddenTxt").val().split(",");
			var $checkboxes=$("input[type=checkbox]");
			$checkboxers.each(function(idx, element){
				if(hobbies.indexOf(element.value) != -1){
					element.setAttribute("checked","checked");
				}else{
					element.removeAttibute("checked");
				}
				
			});
		});
		
	</script>
	
</body>
</html>