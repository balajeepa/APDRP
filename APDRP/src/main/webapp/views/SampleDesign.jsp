<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload Example in JSP and Servlet - Java web application</title>
    </head>
  
    <body> 
        <div>
            <h3> Choose File to Upload in Server </h3>
            <form action="uploadfile" method="post" enctype="multipart/form-data" modelAttribute="fileDb">
            <div>
                <input type="file" name="file" />
                <input type="submit" value="upload" />
                <div>
                <div>
                <tr>
			<td><label>group_name</label></td>
			<td><textarea name="group_name"></textarea></td>
		</tr>
		</div>
		 <div>
                <tr>
			<td><label>descrption</label></td>
			<td><textarea name="descrption"></textarea></td>
		</tr>
		</div>
            </form>          
        </div>
       
    </body>
</html>