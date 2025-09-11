<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Danh Mục</title>
    <!-- DataTables CSS -->
    <link href="https://cdn.datatables.net/2.3.3/css/dataTables.bootstrap5.css" rel="stylesheet" />
    
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            min-height: 100vh;
        }
        
        .action-btn {
            display: block;
            width: 100%;
            padding: 10px;
            text-align: center;
            text-decoration: none;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        
        .btn-logout {
            background-color: #dc3545;
        }
        
        .btn-add {
            background-color: #28a745;
        }
        
        img {
            max-width: 100px;
            max-height: 75px;
        }
        
        .action-link {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }
        
        /* DataTables customization */
        div.dataTables_wrapper div.dataTables_length select {
            width: 60px;
            display: inline-block;
        }
        
        div.dataTables_wrapper div.dataTables_filter {
            text-align: right;
        }
        
        div.dataTables_wrapper div.dataTables_filter input {
            margin-left: 0.5rem;
            display: inline-block;
            width: auto;
        }
        
        div.dataTables_wrapper div.dataTables_info {
            padding-top: 0.85em;
        }
        
        div.dataTables_wrapper div.dataTables_paginate {
            text-align: right;
            margin-top: 0.5rem;
        }
        
        div.dataTables_wrapper div.dataTables_paginate ul.pagination {
            margin: 2px 0;
            white-space: nowrap;
            justify-content: flex-end;
        }
        
        /* Pagination styling */
        .pagination {
            display: flex;
            padding-left: 0;
            list-style: none;
            border-radius: 0.25rem;
        }
        
        .page-item.active .page-link {
            background-color: #007bff;
            color: white;
        }
        
        .page-link {
            position: relative;
            display: block;
            padding: 0.5rem 0.75rem;
            margin-left: -1px;
            line-height: 1.25;
            color: #007bff;
            background-color: #fff;
            border: 1px solid #dee2e6;
        }
    </style>
</head>
<body>
    <div>
        <a href="${pageContext.request.contextPath}/logout" class="action-btn btn-logout">Đăng xuất</a>
        <a href="<c:url value='/views/add-category.jsp'/>" class="action-btn btn-add">Thêm mới danh mục</a>
        
        <table id="example" class="display">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Icon</th>
                    <th>Tên danh mục</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${cateList}" var="cate" varStatus="STT">
                    <tr>
                        <td>${STT.index + 1}</td>
                        <c:url value="/image?fname=${cate.icon}" var="imgUrl"></c:url>
                        <td><img src="${imgUrl}" alt="${cate.categoryName}" /></td>
                        <td>${cate.categoryName}</td>
                        <td>
                            <a href="<c:url value='/categories/update?id=${cate.id}'/>" class="action-link">Sửa</a> |
                            <a href="<c:url value='/categories/delete?id=${cate.id}'/>" class="action-link" 
                               onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này?')">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
            <tfoot>
                <tr>
                    <th>STT</th>
                    <th>Icon</th>
                    <th>Tên danh mục</th>
                    <%-- Chỉ hiển thị cột "Hành động" cho Admin và User --%>
                    <c:if test="${sessionScope.roleId == 0 || sessionScope.roleId == 2}">
                        <th>Hành động</th>
                    </c:if>
                </tr>
            </tfoot>
        </table>
    </div>
    
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdn.datatables.net/2.3.3/js/dataTables.js"></script>

    <script>
        $(document).ready(function() {
            $('#example').DataTable({
                "paging": true,
                "ordering": true,
                "info": true,
                "language": {
                    "search": "Search:",
                    "lengthMenu": "_MENU_ entries per page"
                }
            });
        });
    </script>
</body>
</html>