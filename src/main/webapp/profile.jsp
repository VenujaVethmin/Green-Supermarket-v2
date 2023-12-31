<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>admin</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <style>
        body {
            padding-top: 56px; /* Adjust based on your navbar height */
            background-color: #eef7f0; /* Light green background */
        }

        .sidebar {
            height: 100vh;
            width: 300px;
            background-color: #2ecc71;
            border-right: 1px solid #27ae60;
            position: fixed;
            top: 0;
            right: -300px;
            transition: right 0.3s;
            overflow-x: hidden;
            padding-top: 20px;
            color: #fff;
            z-index: 1;
        }

        .content-with-sidebar {
            margin-right: 0;
            transition: margin-right 0.3s;
        }

        .show-sidebar {
            right: 0;
            /*margin-right: 300px;*/
        }

        .sidebar-content {
            padding: 20px;
        }

        .sidebar-content input {
            margin-bottom: 10px;
        }

        .sidebar-content button {
            background-color: #27ae60;
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            margin-right: 10px;
        }

        .sidebar-content button:hover {
            background-color: #219d52;
        }

        .main-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }

        .add-products-button {
            background-color: #27ae60;
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            margin-right: 10px;
        }

        .add-products-button:hover {
            background-color: #219d52;
        }

        .update-products-button {
            background-color: #f39c12; /* Orange background for update button */
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            margin-right: 10px;
        }

        .update-products-button:hover {
            background-color: #d68910; /* Darker orange on hover */
        }

        .delete-products-button {
            background-color: #e74c3c; /* Red background for delete button */
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
        }

        .delete-products-button:hover {
            background-color: #c44131; /* Darker red on hover */
        }
    </style>
</head>

<body>
<p>${errorMessage}</p>
<p>${messege}</p>

<!-- Page content with Bootstrap grid system -->
<div class="container-fluid">
    <div class="row">
        <!-- Main Content -->
        <div class="col-lg-12 main-content">
            <!-- Add your main content here -->
            <div>
                <div>
                    <h2>Main Content</h2>
                    <p>This is where your main content goes.</p>
                </div>
                <button class="btn btn-success add-products-button" onclick="toggleSidebar('add')">Add Products</button>
                <button class="btn btn-warning add-products-button" onclick="toggleSidebar('update')">Update Products</button>
                <button class="btn btn-danger add-products-button" onclick="toggleSidebar('delete')">Delete Products</button>
            </div>

            <!-- Table with 10 rows and 8 columns -->
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Category</th>

                </tr>
                </thead>
                <tbody>
                <%-- Rows dynamically generated using Java JSP --%>
                <c:forEach var="product" items="${productList}">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>${product.image}</td>
                        <td>${product.quantity}</td>
                        <td>${product.category}</td>

                    </tr>

                </c:forEach>



                </tbody>
            </table>
        </div>

        <!-- Right Sidebar -->
        <div class="sidebar" id="sidebar">
            <!-- Add your sidebar content here -->
            <div class="sidebar-content">
                <h2 style="margin-bottom: 20px;">Product Management</h2>

                <form action="AddProduct" method="get">

                    <input type="text" class="form-control" id="productName" placeholder="Name" name="name">
                    <input type="text" class="form-control" id="productQuantity" placeholder="Quantity" name="quantity">
                    <input type="text" class="form-control" id="productDescription" placeholder="Description" name="description">
                    <input type="text" class="form-control" id="productPrice" placeholder="Price" name="price">
                    <input type="text" class="form-control" id="productCategory" placeholder="Category" name="category">
<%--                    <input type="text" class="form-control" id="productImage" placeholder="Image" name="">--%>

                    <button class="btn btn-primary" type="submit">Add</button>
                    <button class="btn btn-warning" onclick="updateProduct()">Update</button>
                    <button class="btn btn-danger" onclick="deleteProduct()">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

<!-- JavaScript to toggle sidebar -->
<script>
    function toggleSidebar() {
        var sidebar = document.getElementById("sidebar");
        var content = document.querySelector(".content-with-sidebar");

        sidebar.classList.toggle("show-sidebar");
        content.classList.toggle("content-with-sidebar");
    }
</script>

<script>
    function toggleSidebar(action) {
        var sidebar = document.getElementById("sidebar");
        var content = document.querySelector(".content-with-sidebar");

        sidebar.classList.toggle("show-sidebar");
        content.classList.toggle("content-with-sidebar");

        // Clear input fields when sidebar is opened
        if (action === 'add' || action === 'update' || action === 'delete') {
            clearInputFields();
        }
    }

    function clearInputFields() {
        document.getElementById("productId").value = "";
        document.getElementById("productName").value = "";
        document.getElementById("productQuantity").value = "";
        document.getElementById("productDescription").value = "";
        document.getElementById("productPrice").value = "";
        document.getElementById("productCategory").value = "";
        document.getElementById("productImage").value = "";
        document.getElementById("productWeight").value = "";
    }

    function addProduct() {
        // Implement logic for adding a product
        alert("Product added!");
        toggleSidebar();
    }

    function updateProduct() {
        // Implement logic for updating a product
        alert("Product updated!");
        toggleSidebar();
    }

    function deleteProduct() {
        // Implement logic for deleting a product
        alert("Product deleted!");

        toggleSidebar();
    }
</script>

</body>

</html>


