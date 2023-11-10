<%@page import="DTO.Transaction"%>
<%@page import="java.util.List"%>
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
<%
long accno=(long)request.getSession().getAttribute("acno");
Bank_Dao bankDao=new Bank_Dao();
BankAccount bankAccount=bankDao.fetchByAccno(accno);
List<Transaction>list=bankAccount.getBankTransactions();
%>
<h1>Account Number:<%=accno %></h1>
<h1>Account Type:<%=bankAccount.getAccountType()  %></h1><br>

<table border="1">
<tr>
<th>Transaction_Id</th>
<th>Deposit</th>
<th>Withdrow</th>
<th>Balance</th>
<th>Time</th>
</tr>

<%for(Transaction transaction:list) {%>
<tr>
<th><%=transaction.getTid() %></th>
<th><%=transaction.getDeposit() %></th>
<th><%=transaction.getWithdrow()%></th>
<th><%=transaction.getBalance() %></th>
<th><%=transaction.getLocalDateTime() %></th>


</tr>
<%}%>

</table>
</body>
</html>