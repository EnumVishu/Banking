<%@page import="DTO.BankAccount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Bank Account Management</title>
</head>
<body>
  <h1>Welcome To Account Home</h1>
  <% List<BankAccount> list=(List<BankAccount>)request.getSession().getAttribute("list"); %>   
  <table>
    <tr>
      <th>Account Number</th>
      <th>Account Type</th>
      <th>Balance</th>
      <th>Account Limit</th>
      <th>Customer Name</th>
      <th>Customer Id</th>
      <th>Account Status</th>
      <th>Change Status</th>
    </tr>
    <% for(BankAccount bankaccount:list) { %>
      <tr>
        <td><%= bankaccount.getAccountNo() %></td>
        <td><%= bankaccount.getAccountType() %></td>
        <td><%= bankaccount.getAmount() %></td>
        <td><%= bankaccount.getAccountLimit() %></td>
        <td><%= bankaccount.getCustomer().getName() %></td>
        <td><%= bankaccount.getCustomer().getCustid()%></td>
        <td><%= bankaccount.isStatus() %></td>
        <td><a href="changstatus?accno=<%= bankaccount.getAccountNo() %>"><button>Change Status</button></a></td>
      </tr>
    <% } %>
  </table>
</body>
</html>
