<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 4/17/2021
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <h2 class="col-8 offset-2 text-center font-weight-bold my-3">Create Phone</h2>
        <a class="col-2 btn btn-primary align-self-center my-3" href="#">Back</a>
        <form class="col-12" action="phone" method="post">
            <div class="form-group">
                <label>Name :</label>
                <input class="form-control" type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label>Brand :</label>
                <input class="form-control" type="text" id="brand_id" value="1" name="brand" required>
            </div>
            <div class="form-group">
                <label>Price :</label>
                <input class="form-control" type="text" id="price"  name="classId" required>
            </div>
            <div class="form-group">
                <label>Description :</label>
                <input class="form-control" type="text" id="description" name="phone" required>
            </div>

            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
</div>

</body>
</html>
