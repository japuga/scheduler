<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Scheduler</title>
</head>
<body>


<form id="customerForm" action="/scheduler/customers/editCustomer" method="get">
Customer Info
<br>
<table>
<tr><td>Id</td><td>${customer.id }</td></tr>
<tr><td>Name</td><td>${customer.custName }</td></tr>
<tr><td>DOB</td><td>${customer.dob }</td></tr>
</table>
  
</form>

</body>
</html>
