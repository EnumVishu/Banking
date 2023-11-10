<%@page import="DTO.Customer"%>
<%@page import="DTO.BankAccount"%>
<%@page import="DAO.Bank_Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome_to_check_balance_page</h1>

<%
long accno=(long)request.getSession().getAttribute("acno");
 
Bank_Dao bankDao=new Bank_Dao();
BankAccount bankAccount=bankDao.fetchByAccno(accno);
Customer dto=bankAccount.getCustomer();

%>
<h1>hello <%=dto.getName() %> your account balance is:<%=bankAccount.getAmount() %></h1>
</body>
</html>