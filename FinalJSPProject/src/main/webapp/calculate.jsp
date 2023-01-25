<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<style>
table {
	border-collapse: collapse;
}
</style>
		<title>My JSP 'calculate.jsp' starting page</title>
 
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
	</head>
 
	<body>
		<div align="center">
			<h1>
				Simple JSP Calculator By Daniel Schultz
			</h1>
			<hr color="red">
			<div>
				 <!-- Create a javabean component -->
				<jsp:useBean id="calculate" class="com.calculate"></jsp:useBean>
				<jsp:setProperty property="*" name="calculate" />
				<%
					calculate.calculate();
				%>
				 The calculation result is:
				<jsp:getProperty property="firstNum" name="calculate" />
				<jsp:getProperty property="operator" name="calculate" />
				<jsp:getProperty property="secondNum" name="calculate" />=
				<jsp:getProperty property="result" name="calculate" />
			</div>
			<form action="./calculate.jsp" method="post">
				<table border="5px">
					<caption>
						 Calculator
					</caption>
					<tr>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td>
							 The first parameter:
						</td>
						<td>
							<input type="text" name="firstNum" />
						</td>
					</tr>
					<tr>
						<td>
							 Operator
						</td>
						<td>
							<select name="operator">
								<option selected="selected">
									+
								</option>
								<option>
									-
								</option>
								<option>
									*
								</option>
								<option>
									/
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							 The second parameter:
						</td>
						<td>
							<input type="text" name="secondNum" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							 <input type="submit" value="calculation" />
						</td>
					</tr>
				</table>
 
			</form>
		</div>
	</body>
</html>

