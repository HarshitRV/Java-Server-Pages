<% 
    
    int n1 = Integer.parseInt(request.getParameter("num-1"));
    int n2 = Integer.parseInt(request.getParameter("num-2"));

    int sum =  n1 + n2;
    // out.print(n1+n2);
        
    // out.print(request.getParameter("num-1").getClass().getSimpleName());
    
%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>The sum is       <%=sum%>       </h1>
    <h1>The sum is       <% out.print(n1+n2);%>       </h1>
</body>
</html>