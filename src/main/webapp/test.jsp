<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Category List</title>
</head>
<body>
<h1>Category List</h1>

<c:forEach var="category" items="${categories}">
    <!-- Display category values -->
    <p>${category.name}</p>
</c:forEach>
</body>
</html>
