<%@ page import = "java.io.* , java.util.*" %>
<%  
    String task = request.getParameter("task");

    out.print(task);
    // File path to save the list contents

    // Saving item to todo list
    if(task != null && !task.equals("")){
        
        // add your own list.txt file path here
        File file = new File("/Library/Tomcat/webapps/ROOT/JSP/get-creative/todo-list-harshitRV/list.txt");

        try {
            if (!file.exists()) {
                out.print("We had to make a new file.");
                file.createNewFile();
            }

            FileWriter fileWriter = new FileWriter(file, true);

            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            // add your own list.txt file path here
            BufferedReader br = new BufferedReader(new FileReader("/Library/Tomcat/webapps/ROOT/JSP/get-creative/todo-list-harshitRV/list.txt"));
            
            if(br.readLine()==null){
                bufferedWriter.write(task);   
            } else {
                bufferedWriter.write("\n"+task);
            }
            
            bufferedWriter.close();
            br.close();

            // out.println("Done");
        } catch (IOException e) {
            out.println("COULD NOT LOG!!");
        }

    }
    // Fetching items from todo list
    ArrayList <String> list = new ArrayList<>(10);

    try {

        // add your own list.txt file path here
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
    out.print(list);
%>