<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/12/2024
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 0.5rem 1rem;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
            font-size: 1rem;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .search-bar {
            display: flex;
            align-items: center;
        }

        .search-bar input {
            padding: 0.3rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            outline: none;
        }

        .search-bar button {
            padding: 0.3rem 0.5rem;
            margin-left: 0.3rem;
            background-color: #555;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .search-bar button:hover {
            background-color: #777;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="menu">
        <a href="#">Menu</a>
        <a href="#">Contact Us</a>
        <a href="#">About Us</a>
    </div>
    <div class="search-bar">
        <input type="text" placeholder="Search...">
        <button onclick="searchFunction()">Search</button>
    </div>
</div>
<script>
    function searchFunction() {
        const query = document.querySelector('.search-bar input').value;
        if (query) {
            alert(`Searching for: ${query}`);
        } else {
            alert('Please enter a search term.');
        }
    }
</script>

</body>
</html>
