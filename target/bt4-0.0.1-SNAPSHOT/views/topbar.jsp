<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${param.title}</title>

<!-- Modern Style CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/modern-style.css">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<!-- DataTables CSS if needed -->
<link href="https://cdn.datatables.net/2.3.3/css/dataTables.bootstrap5.css" rel="stylesheet" />

<style>
.navbar {
    background: linear-gradient(90deg, var(--primary) 0%, var(--primary-dark) 100%);
    padding: 1rem 2rem;
    box-shadow: var(--shadow-md);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
}

.navbar-brand {
    display: flex;
    align-items: center;
    font-weight: 700;
    color: white;
    font-size: 1.25rem;
}

.navbar-brand i {
    margin-right: 0.5rem;
}

.navbar-nav {
    display: flex;
    gap: 1.5rem;
}

.nav-item {
    position: relative;
}

.nav-link {
    color: rgba(255, 255, 255, 0.9);
    font-weight: 500;
    padding: 0.5rem 0;
    transition: var(--transition);
}

.nav-link:hover, .nav-link.active {
    color: white;
}

.nav-link::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 2px;
    background-color: white;
    transition: var(--transition);
}

.nav-link:hover::after, .nav-link.active::after {
    width: 100%;
}

.navbar-toggler {
    border: none;
    background-color: transparent;
    color: white;
    cursor: pointer;
    padding: 0.5rem;
    font-size: 1.5rem;
}

.main-content {
    margin-top: 80px; /* To account for fixed navbar */
    padding: 2rem;
    min-height: calc(100vh - 80px);
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 1rem;
}

/* For mobile responsiveness */
@media (max-width: 768px) {
    .navbar {
        padding: 0.75rem 1rem;
    }
    
    .navbar-nav {
        flex-direction: column;
        gap: 0.75rem;
    }
    
    .main-content {
        margin-top: 70px;
        padding: 1rem;
    }
}
</style>

</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                <i class="fas fa-layer-group"></i> Category Manager
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link ${param.activePage == 'home' ? 'active' : ''}" 
                           href="${pageContext.request.contextPath}/categories/findall">
                           <i class="fas fa-th-list"></i> Danh mục
                        </a>
                    </li>
                    
                    <c:if test="${empty sessionScope.username}">
                        <li class="nav-item">
                            <a class="nav-link ${param.activePage == 'login' ? 'active' : ''}" 
                               href="${pageContext.request.contextPath}/views/login.jsp">
                               <i class="fas fa-sign-in-alt"></i> Đăng nhập
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link ${param.activePage == 'register' ? 'active' : ''}" 
                               href="${pageContext.request.contextPath}/views/register.jsp">
                               <i class="fas fa-user-plus"></i> Đăng ký
                            </a>
                        </li>
                    </c:if>
                    
                    <c:if test="${not empty sessionScope.username}">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fas fa-user-circle"></i> ${sessionScope.username}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/logout">
                                <i class="fas fa-sign-out-alt"></i> Đăng xuất
                            </a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="main-content">
        <div class="container">
            <jsp:doBody />
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- DataTables JS if needed -->
    <script src="https://cdn.datatables.net/2.3.3/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.3.3/js/dataTables.bootstrap5.js"></script>
</body>
</html>