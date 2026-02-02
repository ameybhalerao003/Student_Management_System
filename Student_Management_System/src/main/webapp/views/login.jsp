<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN PAGE</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

<div class="card bg-primary">
 <marquee class="text-danger fs-1">
 ${login_fail}
 </marquee>
</div>


 <div class="container bg-primary">
 <div class="d-flex justify-content-center align-items-center vh-100">
 <div class="card shadow rounded-4 bg-primary-subtle" style="width: 22rem;">
 <div class="card-body">
 <h3 class="card-title fs-2 text-center mb-3 text-info-emphasis">Login</h3>
 <form>
 <!-- Username -->
 <div class="mb-3">
 <label for="username" class="form-label text-info-emphasis textwhite">Username</label>
 <input type="text" class="form-control" id="username" placeholder="Enter username" required>
 </div>
 <!-- Password -->
 <div class="mb-3">
 <label for="password" class="form-label text-info-emphasis textwhite">Password</label>
 <input type="password" class="form-control" id="password" placeholder="Enter password" required>
 </div>
 <!-- Button -->
 <div class="d-grid">
 <button type="submit" class="btn btn-primary">Login</button>
 </div>
 </form>
 </div>
 </div>
 </div>
 </div>


</body>
</html>