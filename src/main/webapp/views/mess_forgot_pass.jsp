<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông báo Đặt Lại Mật Khẩu</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        :root {
            --primary-color: #6c63ff;
            --secondary-color: #4a3aff;
            --tertiary-color: #f2f0ff;
            --text-dark: #2d2b55;
            --text-light: #6e6a8f;
            --bg-color: #f9f8ff;
            --card-bg: #ffffff;
            --success-color: #48d1b1;
            --warning-color: #ff7e67;
            --shadow-sm: 0 4px 6px rgba(108, 99, 255, 0.05);
            --shadow-md: 0 10px 20px rgba(108, 99, 255, 0.1);
            --shadow-lg: 0 15px 30px rgba(108, 99, 255, 0.15);
            --animation-speed: 0.6s;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: var(--bg-color);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            position: relative;
            overflow-x: hidden;
        }

        .page-wrapper {
            display: flex;
            width: 100%;
            min-height: 100vh;
        }

        .content-side {
            width: 50%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 40px 60px;
            position: relative;
            z-index: 2;
        }

        .image-side {
            width: 50%;
            background: var(--primary-color);
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
        }

        .notification-card {
            background: var(--card-bg);
            border-radius: 16px;
            padding: 40px;
            max-width: 600px;
            width: 100%;
            margin: 0 auto;
            box-shadow: var(--shadow-md);
            animation: slideUp var(--animation-speed) ease-out forwards;
        }

        .heading-group {
            margin-bottom: 30px;
        }

        .logo {
            color: var(--primary-color);
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
        }

        .logo .fa-shield-alt {
            margin-right: 10px;
            font-size: 28px;
        }

        h1 {
            color: var(--text-dark);
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .subtitle {
            color: var(--text-light);
            font-size: 16px;
            font-weight: 400;
            line-height: 1.6;
        }

        .message-container {
            background: var(--tertiary-color);
            border-radius: 12px;
            padding: 25px;
            margin: 25px 0;
            position: relative;
        }

        .message-icon {
            position: absolute;
            top: -20px;
            left: 25px;
            width: 40px;
            height: 40px;
            background: var(--success-color);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: var(--shadow-sm);
        }

        .message-content {
            color: var(--text-dark);
            font-size: 16px;
            line-height: 1.6;
        }

        .action-buttons {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-top: 30px;
        }

        .btn-primary {
            background: var(--primary-color);
            color: white;
            border: none;
            padding: 15px 25px;
            border-radius: 10px;
            font-family: 'Poppins', sans-serif;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: var(--shadow-sm);
            text-decoration: none;
        }

        .btn-primary:hover {
            background: var(--secondary-color);
            box-shadow: var(--shadow-md);
            transform: translateY(-3px);
        }

        .btn-primary .icon {
            margin-right: 10px;
        }

        .btn-secondary {
            background: transparent;
            color: var(--primary-color);
            border: 2px solid var(--primary-color);
            padding: 13px 25px;
            border-radius: 10px;
            font-family: 'Poppins', sans-serif;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
        }

        .btn-secondary:hover {
            background: rgba(108, 99, 255, 0.05);
            transform: translateY(-3px);
        }

        .btn-secondary .icon {
            margin-right: 10px;
        }

        .footer-note {
            margin-top: 25px;
            color: var(--text-light);
            font-size: 14px;
            text-align: center;
        }

        .help-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .help-link:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }

        /* Decorative elements for the image side */
        .graphic-container {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .shape-1, .shape-2, .shape-3, .shape-4, .shape-5 {
            position: absolute;
            border-radius: 50%;
            opacity: 0.1;
            background: white;
        }

        .shape-1 {
            width: 300px;
            height: 300px;
            top: 10%;
            left: -100px;
        }

        .shape-2 {
            width: 200px;
            height: 200px;
            bottom: 10%;
            right: -50px;
        }

        .shape-3 {
            width: 100px;
            height: 100px;
            top: 40%;
            right: 20%;
        }

        .shape-4 {
            width: 150px;
            height: 150px;
            bottom: 30%;
            left: 10%;
        }

        .shape-5 {
            width: 80px;
            height: 80px;
            top: 20%;
            right: 30%;
        }

        .main-illustration {
            width: 70%;
            max-width: 500px;
            z-index: 1;
        }

        /* Animations */
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes float {
            0% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-15px);
            }
            100% {
                transform: translateY(0);
            }
        }

        .floating {
            animation: float 4s ease-in-out infinite;
        }

        /* Responsive design */
        @media (max-width: 1024px) {
            .content-side {
                padding: 30px;
            }
        }

        @media (max-width: 768px) {
            .page-wrapper {
                flex-direction: column;
            }
            .content-side, .image-side {
                width: 100%;
            }
            .image-side {
                min-height: 300px;
                order: -1;
            }
            .notification-card {
                padding: 30px;
                margin-top: -50px;
                z-index: 10;
                border-top-left-radius: 20px;
                border-top-right-radius: 20px;
            }
            .heading-group {
                margin-bottom: 20px;
            }
        }

        @media (max-width: 480px) {
            .content-side {
                padding: 20px;
            }
            .notification-card {
                padding: 25px;
            }
            h1 {
                font-size: 24px;
            }
            .action-buttons {
                gap: 10px;
            }
            .btn-primary, .btn-secondary {
                padding: 12px 20px;
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="page-wrapper">
        <div class="content-side">
            <div class="notification-card">
                <div class="heading-group">
                    <div class="logo">
                        <i class="fas fa-shield-alt"></i> SecureAccount
                    </div>
                    <h1>Yêu cầu đặt lại mật khẩu</h1>
                    <p class="subtitle">Chúng tôi đã nhận được yêu cầu đặt lại mật khẩu từ bạn</p>
                </div>

                <div class="message-container">
                    <div class="message-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <p class="message-content">
                        ${message}
                    </p>
                </div>

                <div class="action-buttons">
                    <a href="${pageContext.request.contextPath}/views/reset_pas.jsp" class="btn-primary">
                        <i class="fas fa-lock icon"></i> Đặt lại mật khẩu
                    </a>
                    <a href="${pageContext.request.contextPath}/views/login.jsp" class="btn-secondary">
                        <i class="fas fa-arrow-left icon"></i> Quay lại đăng nhập
                    </a>
                </div>

                <p class="footer-note">
                    Nếu bạn gặp bất kỳ vấn đề gì, vui lòng liên hệ 
                    <a href="#" class="help-link">hỗ trợ</a> của chúng tôi
                </p>
            </div>
        </div>

        <div class="image-side">
            <div class="graphic-container">
                <div class="shape-1"></div>
                <div class="shape-2"></div>
                <div class="shape-3"></div>
                <div class="shape-4"></div>
                <div class="shape-5"></div>
                <!-- SVG illustration for security concept -->
                <svg class="main-illustration floating" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" width="100%" height="auto" viewBox="0 0 793 551.73152" xmlns:xlink="http://www.w3.org/1999/xlink"><ellipse cx="158" cy="539.73152" rx="158" ry="12" fill="#f2f2f2"/><path d="M324.27227,296.55377c27.49676-11.6953,61.74442-4.28528,95.19092.85757.31124-6.228,4.08385-13.80782.132-18.15284-4.80115-5.2788-4.35917-10.82529-1.47008-16.40375,7.38788-14.265-3.1969-29.44375-13.88428-42.0647a23.66937,23.66937,0,0,0-19.75537-8.29179l-19.7975,1.41411A23.70939,23.70939,0,0,0,343.635,230.85851v0c-4.72724,6.42917-7.25736,12.84055-5.66438,19.21854-7.08065,4.83882-8.27029,10.67977-5.08851,17.2644,2.698,4.14592,2.66928,8.18161-.12275,12.1056a55.89079,55.89079,0,0,0-8.31011,16.5061Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M977.70889,651.09727H417.29111A18.79111,18.79111,0,0,1,398.5,632.30616h0q304.727-35.41512,598,0h0A18.79111,18.79111,0,0,1,977.70889,651.09727Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M996.5,633.41151l-598-1.10536,69.30611-116.61553.3316-.55268V258.13057a23.7522,23.7522,0,0,1,23.75418-23.75418H899.792a23.7522,23.7522,0,0,1,23.75418,23.75418V516.90649Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M491.35028,250.95679a7.74623,7.74623,0,0,0-7.73753,7.73753V493.03073a7.74657,7.74657,0,0,0,7.73753,7.73752H903.64972a7.74691,7.74691,0,0,0,7.73753-7.73752V258.69432a7.74657,7.74657,0,0,0-7.73753-7.73753Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M493.07794,531.71835a3.32522,3.32522,0,0,0-3.01275,1.93006l-21.35537,46.42514a3.31594,3.31594,0,0,0,3.01221,4.7021H920.81411a3.3157,3.3157,0,0,0,2.96526-4.79925L900.5668,533.55126a3.29926,3.29926,0,0,0-2.96526-1.83291Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><circle cx="492.34196" cy="67.97967" r="4.97412" fill="#fff"/><path d="M651.69986,593.61853a3.32114,3.32114,0,0,0-3.20165,2.4536l-5.35679,19.89649a3.31576,3.31576,0,0,0,3.20166,4.17856h101.874a3.31531,3.31531,0,0,0,3.13257-4.40093l-6.88691-19.89649a3.31784,3.31784,0,0,0-3.13366-2.23123Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><polygon points="720.046 337.135 720.046 341.556 264.306 341.556 264.649 341.004 264.649 337.135 720.046 337.135" fill="#ffffff"/><circle cx="707.33457" cy="77.37523" r="77.37523" fill="#ffffff"/><path d="M942.89,285.223H878.77911a4.42582,4.42582,0,0,1-4.42144-4.42145V242.11391a4.42616,4.42616,0,0,1,4.42144-4.42144H942.89a4.42616,4.42616,0,0,1,4.42144,4.42144v38.68761A4.42582,4.42582,0,0,1,942.89,285.223Zm-64.11091-43.10906v38.68761h64.11415L942.89,242.11391Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M930.73105,242.11391h-39.793V224.42814c0-12.80987,8.36792-22.10721,19.89649-22.10721s19.89648,9.29734,19.89648,22.10721Zm-35.37153-4.42144h30.95009V224.42814c0-10.413-6.36338-17.68576-15.475-17.68576s-15.47505,7.27281-15.47505,17.68576Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><circle cx="707.33457" cy="86.21811" r="4.42144" fill="#fff"/><path d="M856.55,285.223H792.43914a4.42582,4.42582,0,0,1-4.42144-4.42145V242.11391a4.42616,4.42616,0,0,1,4.42144-4.42144H856.55a4.42616,4.42616,0,0,1,4.42144,4.42144v38.68761A4.42582,4.42582,0,0,1,856.55,285.223Zm-64.11091-43.10906v38.68761h64.11415L856.55,242.11391Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M844.39105,242.11391h-39.793V224.42814c0-12.80987,8.36792-22.10721,19.89649-22.10721s19.89648,9.29734,19.89648,22.10721Zm-35.37153-4.42144h30.95009V224.42814c0-10.413-6.36338-17.68576-15.475-17.68576s-15.47505,7.27281-15.47505,17.68576Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><circle cx="621.95339" cy="86.21811" r="4.42144" fill="#fff"/><path d="M770.21,285.223H706.09914a4.42582,4.42582,0,0,1-4.42144-4.42145V242.11391a4.42616,4.42616,0,0,1,4.42144-4.42144H770.21a4.42616,4.42616,0,0,1,4.42144,4.42144v38.68761A4.42582,4.42582,0,0,1,770.21,285.223Zm-64.11091-43.10906v38.68761h64.11415L770.21,242.11391Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M758.05105,242.11391h-39.793V224.42814c0-12.80987,8.36792-22.10721,19.89649-22.10721s19.89648,9.29734,19.89648,22.10721Zm-35.37153-4.42144h30.95009V224.42814c0-10.413-6.36338-17.68576-15.475-17.68576s-15.47505,7.27281-15.47505,17.68576Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><circle cx="535.61192" cy="86.21811" r="4.42144" fill="#fff"/><path d="M683.87,285.223H619.75914a4.42582,4.42582,0,0,1-4.42144-4.42145V242.11391a4.42616,4.42616,0,0,1,4.42144-4.42144H683.87a4.42616,4.42616,0,0,1,4.42144,4.42144v38.68761A4.42582,4.42582,0,0,1,683.87,285.223Zm-64.11091-43.10906v38.68761h64.11415L683.87,242.11391Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M671.71105,242.11391h-39.793V224.42814c0-12.80987,8.36792-22.10721,19.89649-22.10721s19.89648,9.29734,19.89648,22.10721Zm-35.37153-4.42144h30.95009V224.42814c0-10.413-6.36338-17.68576-15.475-17.68576s-15.47505,7.27281-15.47505,17.68576Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><circle cx="449.27045" cy="86.21811" r="4.42144" fill="#fff"/><path d="M597.53,285.223H533.41914a4.42582,4.42582,0,0,1-4.42144-4.42145V242.11391a4.42616,4.42616,0,0,1,4.42144-4.42144H597.53a4.42616,4.42616,0,0,1,4.42144,4.42144v38.68761A4.42582,4.42582,0,0,1,597.53,285.223Zm-64.11091-43.10906v38.68761h64.11415L597.53,242.11391Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M585.37105,242.11391h-39.793V224.42814c0-12.80987,8.36792-22.10721,19.89649-22.10721s19.89648,9.29734,19.89648,22.10721Zm-35.37153-4.42144h30.95009V224.42814c0-10.413-6.36338-17.68576-15.475-17.68576s-15.47505,7.27281-15.47505,17.68576Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><circle cx="362.92898" cy="86.21811" r="4.42144" fill="#fff"/><path d="M511.19,285.223H447.07914a4.42582,4.42582,0,0,1-4.42144-4.42145V242.11391a4.42616,4.42616,0,0,1,4.42144-4.42144H511.19a4.42616,4.42616,0,0,1,4.42144,4.42144v38.68761A4.42582,4.42582,0,0,1,511.19,285.223Zm-64.11091-43.10906v38.68761h64.11415L511.19,242.11391Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M499.03105,242.11391h-39.793V224.42814c0-12.80987,8.36792-22.10721,19.89649-22.10721s19.89648,9.29734,19.89648,22.10721Zm-35.37153-4.42144h30.95009V224.42814c0-10.413-6.36338-17.68576-15.475-17.68576s-15.47505,7.27281-15.47505,17.68576Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><circle cx="276.5876" cy="86.21811" r="4.42144" fill="#fff"/><path d="M303.86869,313.91842c-2.89087-39.73932,31.22638-72.32316,65.30423-92.34q.10792-.06391.216-.12782c-22.7659,20.53267-37.21644,52.15863-34.605,89.06087l1.01725,1.73974-1.0786,1.43741A87.821,87.821,0,0,0,304.92834,315.617l-.39479-.95119Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M418.77664,503.91878l-23.13863,33.81739c21.64906-22.52539,46.69931-39.79962,76.43993-50.28607,27.85611-9.82568,60.15795-15.85473,100.29652-18.03676l1.09375-.06642-.08594,1.09082C563.13166,499.03861,484.88664,542.683,418.77664,503.91878Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/><path d="M440.587,157.03236h-23.6263a19.22162,19.22162,0,0,0-19.20131,19.20132V384.46456a19.22161,19.22161,0,0,0,19.20131,19.20131H607.1755a19.22161,19.22161,0,0,0,19.20131-19.20131V176.23368a19.22162,19.22162,0,0,0-19.20131-19.20132H440.587Zm148.64721,39.57257L522.0045,301.60593l-66.56466-104.53893-.84473-1.32852h88.20087l16.81641,39.11334h.93066l16.82617-39.11334h88.20088Z" transform="translate(-203.5 -174.13424)" fill="#ffffff"/></svg>
            </div>
        </div>
    </div>

    <!-- JavaScript for animation and interactivity -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Staggered animation for elements
            const animatedElements = [
                '.logo', 
                'h1', 
                '.subtitle', 
                '.message-container',
                '.btn-primary',
                '.btn-secondary',
                '.footer-note'
            ];
            
            let delay = 0;
            animatedElements.forEach(selector => {
                const element = document.querySelector(selector);
                if (element) {
                    setTimeout(() => {
                        element.style.opacity = '1';
                    }, delay);
                    delay += 150;
                }
            });
            
            // Button interactions
            const buttons = document.querySelectorAll('.btn-primary, .btn-secondary');
            buttons.forEach(button => {
                button.addEventListener('mousedown', function() {
                    this.style.transform = 'scale(0.98)';
                });
                
                button.addEventListener('mouseup', function() {
                    if (this.classList.contains('btn-primary')) {
                        this.style.transform = 'translateY(-3px)';
                    } else {
                        this.style.transform = 'translateY(-3px)';
                    }
                });
                
                button.addEventListener('mouseleave', function() {
                    if (this.classList.contains('btn-primary')) {
                        this.style.transform = 'translateY(-3px)';
                    } else {
                        this.style.transform = 'translateY(-3px)';
                    }
                });
            });
        });
    </script>
</body>
</html>
