<%-- 
    Document   : createBlog
    Created on : Oct 16, 2021, 3:53:47 PM
    Author     : asus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creator</title>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

    </head>
    <body>
         <jsp:include page="header.jsp"/>
        <div class="container">
             <!--begin of menu-->
            
            <!--end of menu-->
            <!--begin of form-->
            <form class="col-sm-12" action="BlogController?action=add" method="post">
                <h2>Create </h2>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Link image</label>
                    <input name="image" type="text" class="form-control" id="exampleFormControlInput1" >
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Tittle</label>
                    <textarea name="title" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Content</label>
                    <textarea name="content" class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
                </div>
               
                <button type="submit" class="btn btn-primary">Create</button>
            </form>
            <!--end of form-->
        </div>
                         

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

    </body>
</html>
