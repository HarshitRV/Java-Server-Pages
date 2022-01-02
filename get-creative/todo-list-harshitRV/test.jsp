<%@ page import="java.util.*" %>
<% 
    ArrayList<String> list = (ArrayList<String>) session.getAttribute("todo-list");
    session.invalidate();
    out.print(list);

    if(list == null){
        
    }
%>