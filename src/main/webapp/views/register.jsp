<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>

    <!-- Modern Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/modern-style.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <style>
        .register-container {
            display: flex;
            min-height: 100vh;
            background: linear-gradient(135deg, #c3cfe2 0%, #f5f7fa 100%);
        }
        
        .register-form {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }
        
        .register-image {
            flex: 1;
            background: url('https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80') center/cover;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 2rem;
            position: relative;
            display: none; /* Hidden on mobile */
        }
        
        .register-image::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(to right, rgba(0,0,0,0.7) 0%, rgba(0,0,0,0) 100%);
        }
        
        .register-image-text {
            color: white;
            position: relative;
            z-index: 1;
            max-width: 400px;
        }
        
        .card {
            animation: fadeIn 0.5s ease-in-out;
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
        
        .password-requirements {
            font-size: 0.85rem;
            color: var(--text-light);
            margin-top: 0.5rem;
        }
        
        .requirement {
            display: flex;
            align-items: center;
            margin-bottom: 0.25rem;
        }
        
        .requirement i {
            margin-right: 0.5rem;
            font-size: 0.8rem;
        }
        
        .valid {
            color: var(--success);
        }
        
        .invalid {
            color: var(--text-light);
        }
        
        @media (min-width: 992px) {
            .register-image {
                display: flex;
            }
            
            .card {
                min-width: 400px;
            }
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="register-image">
            <div class="register-image-text">
                <h1>Tham gia với chúng tôi</h1>
                <p class="mb-4">Đăng ký để truy cập vào hệ thống quản lý danh mục và tận hưởng trải nghiệm người dùng tuyệt vời.</p>
                <ul>
                    <li class="mb-2"><i class="fas fa-check-circle mr-2"></i> Quản lý danh mục dễ dàng</li>
                    <li class="mb-2"><i class="fas fa-check-circle mr-2"></i> Giao diện người dùng thân thiện</li>
                    <li class="mb-2"><i class="fas fa-check-circle mr-2"></i> Bảo mật thông tin</li>
                </ul>
            </div>
        </div>
        
        <div class="register-form">
            <div class="card fade-in">
                <div class="card-title">
                    <i class="fas fa-user-plus logo-icon"></i> Đăng ký tài khoản
                </div>
                
                <c:if test="${not empty alert}">
                    <div class="alert alert-danger">${alert}</div>
                </c:if>
                
                <form action="${pageContext.request.contextPath}/register" method="post">
                    <div class="input-group">
                        <i class="fas fa-user input-icon"></i>
                        <input type="text" id="username" name="username" class="form-control" placeholder="Tên đăng nhập" required>
                    </div>
                    
                    <div class="input-group">
                        <i class="fas fa-envelope input-icon"></i>
                        <input type="email" id="email" name="email" class="form-control" placeholder="Địa chỉ email" required>
                    </div>
                    
                    <div class="input-group">
                        <i class="fas fa-lock input-icon"></i>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Mật khẩu" required>
                        <i class="fas fa-eye password-toggle" onclick="togglePassword()"></i>
                    </div>
                    
                    <div class="password-requirements mb-4">
                        <p class="mb-2">Mật khẩu của bạn nên có:</p>
                        <div class="requirement" id="length">
                            <i class="fas fa-circle"></i> Ít nhất 8 ký tự
                        </div>
                        <div class="requirement" id="uppercase">
                            <i class="fas fa-circle"></i> Ít nhất 1 chữ hoa
                        </div>
                        <div class="requirement" id="lowercase">
                            <i class="fas fa-circle"></i> Ít nhất 1 chữ thường
                        </div>
                        <div class="requirement" id="number">
                            <i class="fas fa-circle"></i> Ít nhất 1 số
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-user-plus mr-2"></i> Đăng ký
                    </button>
                </form>
                
                <div class="card-footer">
                    <p>Đã có tài khoản? <a href="${pageContext.request.contextPath}/views/login.jsp">Đăng nhập</a></p>
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
        
        // Password validation
        document.getElementById('password').addEventListener('input', function() {
            const password = this.value;
            
            // Update requirements
            document.getElementById('length').className = 
                password.length >= 8 ? 'requirement valid' : 'requirement invalid';
            
            document.getElementById('uppercase').className = 
                /[A-Z]/.test(password) ? 'requirement valid' : 'requirement invalid';
            
            document.getElementById('lowercase').className = 
                /[a-z]/.test(password) ? 'requirement valid' : 'requirement invalid';
            
            document.getElementById('number').className = 
                /[0-9]/.test(password) ? 'requirement valid' : 'requirement invalid';
            
            // Update icons
            document.querySelectorAll('.valid i').forEach(icon => {
                icon.className = 'fas fa-check-circle';
            });
            
            document.querySelectorAll('.invalid i').forEach(icon => {
                icon.className = 'fas fa-circle';
            });
        });
    </script>
</body>
</html>