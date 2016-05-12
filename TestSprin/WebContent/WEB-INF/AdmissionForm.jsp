<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>

<body>

	<h1>${headerMessage}</h1>
	<h3><spring:message code="label.admissionForm"/> </h3>

	<form:errors path="student1.*" />
	
	<form action="/FirstSpringMVCProject/submitAdmissionForm.html" method="post">
		<table>
		<tr><td><spring:message code="label.studentName"/>   		</td>  <td>       <input type="text" name="studentName" />   </td> </tr>
		<tr><td><spring:message code="label.studentHobby"/> 		</td>  <td>       <input type="text" name="studentHobby" />  </td> </tr>
		<tr><td><spring:message code="label.studentMobile"/>	</td>  <td>       <input type="text" name="studentMobile" /> </td> </tr>
		<tr><td><spring:message code="label.studentDOB"/>  		</td>  <td>       <input type="text" name="studentDOB" />    </td> </tr>
		
		<tr><td><spring:message code="label.studentSkill"/></td>  <td>    			<select name="studentSkills" multiple>
																<option value="Java Core">Java Core</option>
																<option value="Spring Core">Spring Core</option>
																<option value="Spring MVC">Spring MVC</option>
																</select><td></tr>
	</table>
	<table>
			<tr><td>Student's Address : </td></tr> 
		<tr>
			<td><spring:message code="label.country"/><input type="text" name="studentAddress.country"/></td>
			<td><spring:message code="label.city"/><input type="text" name="studentAddress.city" /></td>
			<td><spring:message code="label.street"/> <input type="text" name="studentAddress.street" /></td> 
			<td><spring:message code="label.pincode"/><input type="text" name="studentAddress.pincode" /></td>
		</tr>
		
		<tr><td><input type="submit" value="Submit this form by clicking here" /></td></tr>
	</table>
		
	</form>
 
</body>
</html>

