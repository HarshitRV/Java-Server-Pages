console.log("script-loaded");

function changeBg(){
    var color = f1.colors.value; // color = 1 or 2 or 3 
    
    f1.action = "seBg.jsp?colors=" + color;  // localhost:8080/JSP/changeBg/setBg.jsp?colors=1 or 2 or 3
    
    f1.submit();
}