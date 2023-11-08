<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
 <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </head>
<body>


<h1 style="color:black ; padding:5px; margin:50px; text-align:center">Welcome home, <%= request.getAttribute("firstname") %> !!</h1>
<table class="table m-5 table-dark">
  <thead class="thead-dark">
    <tr>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Gender</th>
      <th scope="col">City</th>
       <th scope="col">State</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><%= request.getAttribute("firstname") %></td>
      <td><%= request.getAttribute("lastname") %></td>
      <td><%= request.getAttribute("gender") %></td>
       <td><%= request.getAttribute("city") %></td>
        <td><%= request.getAttribute("state") %></td>
    </tr>

  </tbody>
</table>

</body>
</html>