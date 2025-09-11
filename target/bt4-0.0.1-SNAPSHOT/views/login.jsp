<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>

    <!-- Modern Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/modern-style.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <style>
        .login-container {
            display: flex;
            min-height: 100vh;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }
        
        .login-image {
            flex: 1;
            background: url('https://images.unsplash.com/photo-1579389083395-4507e98b5e67?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80') center/cover;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 2rem;
            position: relative;
            display: none; /* Hidden on mobile */
        }
        
        .login-image::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.7) 0%, rgba(0,0,0,0) 60%);
        }
        
        .login-image-text {
            color: white;
            position: relative;
            z-index: 1;
        }
        
        .login-form {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }
        
        .card {
            animation: fadeIn 0.5s ease-in-out;
        }
        
        .form-icon {
            margin-right: 0.5rem;
            color: var(--primary);
            width: 18px;
        }
        
        .input-group {
            position: relative;
            margin-bottom: 1.5rem;
        }
        
        .input-icon {
            position: absolute;
            left: 1rem;
            top: 0.75rem;
            color: var(--text-light);
        }
        
        .form-control {
            padding-left: 2.5rem;
        }
        
        .password-toggle {
            position: absolute;
            right: 1rem;
            top: 0.75rem;
            color: var(--text-light);
            cursor: pointer;
        }
        
        .forgot-password-link {
            text-align: right;
            margin-bottom: 1.5rem;
            font-size: 0.9rem;
        }
        
        .app-logo {
            text-align: center;
            margin-bottom: 2rem;
            font-size: 1.75rem;
            font-weight: 700;
            color: var(--primary-color);
        }
        
        .app-logo i {
            margin-right: 0.5rem;
            font-size: 2rem;
        }
        
        @media (min-width: 992px) {
            .login-image {
                display: flex;
            }
            
            .card {
                min-width: 400px;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-image">
            <div class="login-image-text">
                <h2>Quản Lý Danh Mục</h2>
                <p>Hệ thống quản lý danh mục hiện đại, tiện lợi và dễ sử dụng.</p>
            </div>
        </div>
        
        <div class="login-form">
            <div class="card fade-in">
                <div class="card-title">
                    <i class="fas fa-lock logo-icon"></i> Đăng nhập
                </div>
                
                <c:if test="${not empty alert}">
                    <div class="alert alert-danger">${alert}</div>
                </c:if>
                
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="input-group">
                        <i class="fas fa-user input-icon"></i>
                        <input type="text" id="username" name="username" class="form-control" placeholder="Tên đăng nhập" required>
                    </div>
                    
                    <div class="input-group">
                        <i class="fas fa-key input-icon"></i>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Mật khẩu" required>
                        <i class="fas fa-eye password-toggle" onclick="togglePassword()"></i>
                    </div>
                    
                    <div class="d-flex justify-between align-center mb-4">
                        <div class="form-check">
                            <input type="checkbox" id="remember" name="remember" class="form-check-input">
                            <label class="form-check-label" for="remember">Ghi nhớ đăng nhập</label>
                        </div>
                        
                        <div class="forgot-password-link">
                            <a href="${pageContext.request.contextPath}/views/forgot_pas.jsp">Quên mật khẩu?</a>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-sign-in-alt mr-2"></i> Đăng nhập
                    </button>
                </form>
                
                <div class="app-logo">
                    <i class="fas fa-layer-group"></i> Quản Lý Danh Mục
                </div>
                
                <div class="card-footer">
                    <p>Chưa có tài khoản? <a href="${pageContext.request.contextPath}/views/register.jsp">Đăng ký ngay</a></p>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        function togglePassword() {
            const passwordInput = document.getElementById('password');
            const icon = document.querySelector('.password-toggle');
            
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                icon.classList.replace('fa-eye', 'fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                icon.classList.replace('fa-eye-slash', 'fa-eye');
            }
        }
    </script>
</body>
</html>
