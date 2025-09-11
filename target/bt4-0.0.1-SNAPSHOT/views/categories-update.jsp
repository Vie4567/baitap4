<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Danh Mục</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }
        
        h1 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
            font-size: 24px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-control {
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            width: 100%;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .btn {
            padding: 10px 20px;
            border-radius: 4px;
            font-weight: 500;
            cursor: pointer;
            border: none;
            margin-right: 10px;
        }
        
        .btn-default {
            background-color: #007bff;
            color: white;
        }
        
        .btn-primary {
            background-color: #6c757d;
            color: white;
        }
        
        .actions {
            margin-top: 30px;
            display: flex;
        }
        
        .back-link {
            margin-top: 20px;
            display: block;
            text-align: center;
        }
        
        .back-link a {
            color: #007bff;
            text-decoration: none;
        }
        
        .back-link a:hover {
            text-decoration: underline;
        }
        
        .current-image {
            display: block;
            margin: 10px 0;
            border: 1px solid #dee2e6;
            padding: 5px;
            border-radius: 4px;
            background-color: #f8f9fa;
            max-width: 200px;
        }
        
        .img-responsive {
            max-width: 100%;
            height: auto;
            display: block;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Chỉnh Sửa Danh Mục</h1>
        
        <form role="form" action="${pageContext.request.contextPath}/categories/update" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${category.id}"/>
            
            <div class="form-group">
                <label for="name">Tên danh mục:</label>
                <input type="text" class="form-control" value="${category.categoryName}" name="name" id="name" required />
            </div>
    
            <div class="form-group">
                <label for="icon">Ảnh đại diện:</label>
                <div class="current-image">
                    <c:url value="/image?fname=${category.icon}" var="imgUrl"/>
                    <img class="img-responsive" src="${imgUrl}" alt="Ảnh hiện tại" />
                    <p class="mt-2">Ảnh hiện tại</p>
                </div>
                <input type="file" class="form-control" name="icon" id="icon" />
                <small class="form-text text-muted">Để trống nếu không muốn thay đổi ảnh</small>
            </div>
    
            <div class="actions">
                <button type="submit" class="btn btn-default">Lưu thay đổi</button>
                <button type="reset" class="btn btn-primary">Hủy</button>
            </div>
        </form>
        
        <div class="back-link">
            <a href="${pageContext.request.contextPath}/categories/findall">Quay lại danh sách</a>
        </div>
    </div>
</body>
</html>
