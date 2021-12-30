<%

    String current_user = (String) session.getAttribute("user_name"); 
    String message = "";
    String bg = "";
    if (current_user == null){
        message = "You need to login first";
        bg = "red";
    } else {
        bg = "green";
    }

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body style="background-color: <%=bg%>;">

   <% if (current_user != null){  %>
        <h1>Your username is <%=current_user%></h1>
        <form action="logout.jsp">
            <button type="submit">Log Out !</button>
        </form>
   <% }else{ %>
        <h1><%=message%></h1>
        <form action="index.jsp">
            <button type="submit">Login First</button>
        </form>
   <% } %>

</body>
</html>