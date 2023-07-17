
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manageraccount.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manager <b>Account</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addAccount"  class="btn  button1" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Account</span></a>
                            <a href="home" class="btn button1" > <span>Home</span></a>						
                        </div>
                    </div>
                </div>
                <table class="row table table-striped table-hover ">
                    <thead>
                        <tr>

                            <th>ID</th>
                            <th>Name</th>
                            <th>Pass</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>isAdmin</th>
                            <th>isSell</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listA}" var="o">
                            <tr>

                                <td>${o.id}</td>
                                <td>${o.name}</td>
                                <td>${o.password}</td>
                                <td>${o.address}</td>
                                <td>${o.phone} </td>
                                <td>${o.isAdmin} </td>
                                <td>${o.isSell} </td>
                                <td>
                                    <a href="loadaccount?aid=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="deleteaccount?aid=${o.id}&index=${tagA}" onclick="return confirm('Are you sure you want to delete this item?');" class="delete" data-toggle="modal">
                                        <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <ul class="pagination">
                        <c:forEach begin="1"  end="${endP}" var="i">
                            <li class="page-item  ${tagA == i ?  "active":"" }">                        
                                <a href="manageraccount?index=${i}" class="page-link">${i}</a>                              
                            </li>
                        </c:forEach >
                    </ul>
                </div>
            </div>
        </div>
        <!-- Add Account HTML -->
        <div id="addAccount" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addaccount" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Account</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Pass</label>
                                <input name="pass" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input name="address" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input name="phone" type="text" class="form-control" required>
                            </div>                           
                            <div class="form-group">
                                <label>isSell</label>
                                <select name="sell" class="form-select" aria-label="Default select example">
                                    <option value="1">True</option>
                                    <option value="0">False</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>isAdmin</label>
                                <select name="admin" class="form-select" aria-label="Default select example">
                                    <option value="1">True</option>
                                    <option value="0">False</option>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn button1" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn button1" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="app.js" type="text/javascript"></script>
        <script>

        </script>
    </body>
</html>