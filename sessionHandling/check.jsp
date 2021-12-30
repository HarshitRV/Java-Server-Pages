<%
    String name = request.getParameter("username");
    String password = request.getParameter("pass");
    String r = "";

    if(name.equals("admin") && password.equals("1234")){

        session.setAttribute("user_name", name);
    
    } 

    response.sendRedirect("dashboard.jsp");

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check JSP</title>
</head>
<body>
    <p> You are <strong> <%=r%>  </strong> </p>
</body>
</html>