<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Register - Campus Life Tools</title>
        <style>
            /* Full theme CSS from homepage/login */
            :root {
                --primary-color: #2c3e50;
                --secondary-color: #3498db;
                --accent-color: #e74c3c;
                --text-light: #ecf0f1;
                --gradient: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                background: var(--gradient);
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                animation: gradientShift 15s ease infinite;
            }

            @keyframes gradientShift {
                0% {
                    background-position: 0% 50%;
                }

                50% {
                    background-position: 100% 50%;
                }

                100% {
                    background-position: 0% 50%;
                }
            }

            .login-container {
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
                padding: 2.5rem;
                border-radius: 20px;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
                width: 400px;
                transform: translateY(20px);
                opacity: 0;
                animation: fadeUp 0.6s ease forwards;
            }

            @keyframes fadeUp {
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .logo {
                text-align: center;
                margin-bottom: 2rem;
            }

            .logo a {
                color: var(--text-light);
                font-size: 2.2rem;
                text-decoration: none;
                position: relative;
                font-weight: 600;
            }

            .logo a::after {
                content: '';
                position: absolute;
                bottom: -5px;
                left: 0;
                width: 0;
                height: 2px;
                background: var(--accent-color);
                transition: width 0.3s ease;
            }

            .logo a:hover::after {
                width: 100%;
            }

            .form-group {
                margin-bottom: 1.5rem;
            }

            input {
                width: 100%;
                padding: 1rem;
                background: rgba(255, 255, 255, 0.1);
                border: 2px solid rgba(255, 255, 255, 0.1);
                border-radius: 8px;
                color: var(--text-light);
                font-size: 1rem;
                transition: all 0.3s ease;
            }

            input:focus {
                outline: none;
                border-color: var(--accent-color);
                background: rgba(255, 255, 255, 0.15);
            }

            input::placeholder {
                color: rgba(236, 240, 241, 0.7);
            }

            button {
                width: 100%;
                padding: 1rem;
                background: var(--accent-color);
                color: var(--text-light);
                border: none;
                border-radius: 8px;
                font-size: 1.1rem;
                cursor: pointer;
                transition: all 0.3s ease;
                position: relative;
                overflow: hidden;
            }

            button:hover {
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(231, 76, 60, 0.3);
            }

            .error-message {
                color: var(--accent-color);
                text-align: center;
                margin-bottom: 1.5rem;
                font-weight: 500;
                animation: shake 0.4s ease;
            }

            @keyframes shake {

                0%,
                100% {
                    transform: translateX(0);
                }

                25% {
                    transform: translateX(-10px);
                }

                75% {
                    transform: translateX(10px);
                }
            }

            .signup-link {
                text-align: center;
                margin-top: 1.5rem;
                color: var(--text-light);
            }

            .signup-link a {
                color: var(--text-light);
                text-decoration: none;
                font-weight: 500;
                border-bottom: 2px solid transparent;
                transition: border-color 0.3s ease;
            }

            .signup-link a:hover {
                border-bottom-color: var(--accent-color);
            }

            /* Registration-specific styles */
            .password-strength {
                margin-top: 0.5rem;
                font-size: 0.9rem;
                color: rgba(236, 240, 241, 0.8);
            }

            .terms {
                margin: 1.5rem 0;
                color: rgba(236, 240, 241, 0.9);
                font-size: 0.9rem;
                text-align: center;
                line-height: 1.5;
            }

            .terms a {
                color: var(--text-light);
                text-decoration: none;
                border-bottom: 1px solid var(--accent-color);
                transition: opacity 0.3s ease;
            }

            .terms a:hover {
                opacity: 0.8;
            }

            .success-message {
                color: #2ecc71;
                text-align: center;
                margin-bottom: 1.5rem;
                animation: fadeUp 0.6s ease;
            }

            @media (max-width: 480px) {
                .login-container {
                    width: 90%;
                    padding: 1.5rem;
                }
            }
        </style>
    </head>

    <body>
        <div class="login-container">
            <div class="logo">
                <a href="homepage.jsp">CampusLifeTools</a>
            </div>

            <%-- Error Messages --%>
                <% if (request.getParameter("error") !=null) { %>
                    <div class="error-message">
                        <% switch(request.getParameter("error")) { case "exists" : %>
                            Username or email already exists!
                            <% break; case "password" : %>
                                Password must be at least 8 characters
                                <% break; default: %>
                                    Registration failed. Please try again.
                                    <% } %>
                    </div>
                    <% } %>

                        <% if (request.getParameter("success") !=null) { %>
                            <div class="success-message">
                                Registration successful! Please login.
                            </div>
                            <% } %>

                                <form action="registerprocess.jsp" method="POST">
                                    <div class="form-group">
                                        <input type="text" name="username" placeholder="Username" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" placeholder="Email" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" placeholder="Password" required>
                                        <div class="password-strength">
                                            Minimum 8 characters
                                        </div>
                                    </div>

                                    <div class="terms">
                                        By registering, you agree to our<br>
                                        <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                                    </div>

                                    <button type="submit">Create Account</button>
                                </form>

                                <div class="signup-link">
                                    Already have an account? <a href="login.jsp">Login here</a>
                                </div>
        </div>
    </body>

    </html>