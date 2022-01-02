<%@ page import="java.util.*" %>
<% 
    ArrayList<String> list = (ArrayList<String>) session.getAttribute("todo-list");


%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-white">
                    <div class="card-body">
                        <form name="todoForm" action="add.jsp" method="get">
                            <input type="text" name="task" class="form-control add-task" placeholder="New Task..." autofocus>
                        </form>

                        <%if(list != null){%>
                            <% for(String item: list){ %>
                            <div class="todo-list">
                                <div class="todo-item">
                                    <div class="checker"><span class=""><input type="checkbox"></span></div>
                                    <span>
                                        <%=item%>
                                    </span>
                                    <a id="list-item" class="float-right remove-todo-item"><i class="icon-close"></i></a>
                                </div>
                            </div>
                            <% }%>
                        <% }%>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // checking if the page is reloaded or not 
        const pageAccessedByReload = (
            (window.performance.navigation && window.performance.navigation.type === 1) ||
            window.performance
            .getEntriesByType('navigation')
            .map((nav) => nav.type)
            .includes('reload')
        );
        if(pageAccessedByReload){
            todoForm.action = "add.jsp";
            todoForm.submit();
        }
        //----------------------------------------
    </script>
</body>

</html>