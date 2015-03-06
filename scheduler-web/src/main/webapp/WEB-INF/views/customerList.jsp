<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Scheduler</title>
	
<script language="javacsript" type="text/javascript">
function editCustomer(customerId){
	var form = document.findByElementId("customerForm");
	form.submit();
}
</script>

</head>
<body>

<form id="customerForm" action="/scheduler/customers/editCustomer" method="get">
  
</form>
<table>
<c:forEach var="customer" items="${customerList}">
<thead>

<tr><td>Id</td><td>Name</td>
</thead>
<tr>
	<td>${customer.id }</td>
	<td><a id="${customer.id}" href="/scheduler/customers/edit?id=${customer.id}">${customer.custName }</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>
