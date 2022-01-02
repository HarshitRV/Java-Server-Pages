<%@ page import = "java.io.* , java.util.*" %>
<%  
    String task = request.getParameter("task");

    // Saving item to todo list
    if(task != null && !task.equals("")){
        File file = new File("/Library/Tomcat/webapps/ROOT/JSP/get-creative/todo-list-harshitRV/list.txt");

        try {
            if (!file.exists()) {
                out.println("We had to make a new file.");
                file.createNewFile();
            }

            FileWriter fileWriter = new FileWriter(file, true);

            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write("\n"+task);
            bufferedWriter.close();

            // out.println("Done");
        } catch (IOException e) {
            out.println("COULD NOT LOG!!");
        }

    }
    // Fetching items from todo list
    ArrayList <String> list = new ArrayList<>(10);

    try {

        BufferedReader br = new BufferedReader(new FileReader("/Library/Tomcat/webapps/ROOT/JSP/get-creative/todo-list-harshitRV/list.txt"));

        String line = null;

        while ((line = br.readLine()) != null) {
            //out.println(line);
            list.add(line);
        }

        session.setAttribute("todo-list", list);

        response.sendRedirect("index.jsp");

        br.close();

    } catch(IOException e){
        response.sendRedirect("index.jsp");
    } 
    // out.print(list);
%>