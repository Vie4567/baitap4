<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quên Mật Khẩu</title>

    <!-- Modern Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/modern-style.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <style>
        .forgot-container {
            display: flex;
            min-height: 100vh;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }
        
        .forgot-card {
            max-width: 450px;
            width: 100%;
            padding: 2.5rem;
        }
        
        .illustration {
            text-align: center;
            margin-bottom: 1.5rem;
        }
        
        .illustration i {
            font-size: 5rem;
            color: var(--primary);
            margin-bottom: 1rem;
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0% { transform: scale(0.95); opacity: 0.7; }
            50% { transform: scale(1); opacity: 1; }
            100% { transform: scale(0.95); opacity: 0.7; }
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
        
        .btn {
            transition: all 0.3s ease;
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-lg);
        }
        
        .back-link {
            display: flex;
            align-items: center;
            margin-top: 1.5rem;
            font-weight: 500;
        }
        
        .back-link i {
            margin-right: 0.5rem;
        }
    </style>
</head>
<body>
    <div class="forgot-container">
        <div class="card fade-in forgot-card">
            <div class="illustration">
                <i class="fas fa-key"></i>
                <h2 class="card-title">Quên Mật Khẩu</h2>
            </div>
            
            <p class="text-center mb-4">Nhập địa chỉ email của bạn và chúng tôi sẽ gửi cho bạn một liên kết để đặt lại mật khẩu.</p>
            
            <c:if test="${not empty error}">
                <div class="alert alert-danger">
                    <i class="fas fa-exclamation-circle mr-2"></i> ${error}
                </div>
            </c:if>
            
            <form action="${pageContext.request.contextPath}/forgotpassword" method="POST">
                <div class="input-group">
                    <i class="fas fa-envelope input-icon"></i>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Địa chỉ email" required />
                </div>
                
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-paper-plane mr-2"></i> Gửi liên kết đặt lại
                </button>
            </form>
            
            <a href="${pageContext.request.contextPath}/views/login.jsp" class="back-link">
                <i class="fas fa-arrow-left"></i> Quay lại trang đăng nhập
            </a>
            
            <div class="text-center mt-4">
                <p class="mb-1">Không nhận được email?</p>
                <p>Hãy kiểm tra thư mục spam hoặc <a href="#" onclick="document.querySelector('form').submit();">gửi lại</a></p>
            </div>
        </div>
    </div>
</body>
</html>
