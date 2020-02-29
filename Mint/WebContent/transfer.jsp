<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>JSP Page</title>
</head>

<body>
<form name="form" action="transfer" method="post">
Enter Aadhar:<input type="text" name="aadhar" value="" required><br>
Enter Your Acc number:<input type="text" name="accountnum" value="" required><br>
Enter Beneficiary Acc number:<input type="text" name="benefitnum" value="" required><br>

Enter Amount:<input type="text" name="amount" value="" required> 

<input type="submit" value="submit">
</form>

</body>
</html>