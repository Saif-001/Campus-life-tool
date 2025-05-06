<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Campus Life Tools - Student Success Suite</title>
        <style>
            /* Base Styles */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            :root {
                --primary-color: #2c3e50;
                --secondary-color: #3498db;
                --accent-color: #e74c3c;
                --text-light: #ecf0f1;
            }

            body {
                background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
                min-height: 100vh;
                overflow-x: hidden;
            }

            /* Navigation */
            .nav-container {
                padding: 1.5rem 5%;
                display: flex;
                justify-content: space-between;
                align-items: center;
                animation: slideDown 1s ease;
            }

            .logo {
                color: var(--text-light);
                font-size: 2rem;
                font-weight: 700;
                text-decoration: none;
                position: relative;
            }

            .logo::after {
                content: '';
                position: absolute;
                bottom: -5px;
                left: 0;
                width: 0;
                height: 3px;
                background: var(--accent-color);
                transition: width 0.3s ease;
            }

            .logo:hover::after {
                width: 100%;
            }

            /* Hero Section */
            .hero {
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 90vh;
                padding: 0 5%;
                text-align: center;
            }

            .hero-content {
                max-width: 800px;
                transform: translateY(50px);
                opacity: 0;
                animation: fadeUp 1s ease forwards 0.5s;
            }

            h1 {
                font-size: 4rem;
                color: var(--text-light);
                margin-bottom: 1.5rem;
                line-height: 1.2;
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            }

            .tagline {
                font-size: 1.5rem;
                color: rgba(236, 240, 241, 0.9);
                margin-bottom: 2rem;
                animation: colorShift 5s infinite alternate;
            }

            /* Get Started Button */
            .cta-button {
                display: inline-block;
                padding: 1.2rem 2.5rem;
                font-size: 1.2rem;
                background: var(--accent-color);
                color: var(--text-light);
                border: none;
                border-radius: 30px;
                cursor: pointer;
                transition: all 0.3s ease;
                position: relative;
                overflow: hidden;
                text-decoration: none;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            }

            .cta-button::before {
                content: '';
                position: absolute;
                top: 0;
                left: -100%;
                width: 100%;
                height: 100%;
                background: linear-gradient(120deg,
                        transparent,
                        rgba(255, 255, 255, 0.3),
                        transparent);
                transition: 0.5s;
            }

            .cta-button:hover {
                transform: translateY(-3px);
                box-shadow: 0 15px 25px rgba(0, 0, 0, 0.3);
            }

            .cta-button:hover::before {
                left: 100%;
            }

            /* Animations */
            @keyframes fadeUp {
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @keyframes slideDown {
                from {
                    transform: translateY(-100%);
                }

                to {
                    transform: translateY(0);
                }
            }

            @keyframes colorShift {
                0% {
                    color: rgba(236, 240, 241, 0.9);
                }

                50% {
                    color: rgba(231, 76, 60, 0.8);
                }

                100% {
                    color: rgba(236, 240, 241, 0.9);
                }
            }

            /* Responsive Design */
            @media (max-width: 768px) {
                h1 {
                    font-size: 2.5rem;
                }

                .tagline {
                    font-size: 1.2rem;
                }

                .cta-button {
                    padding: 1rem 2rem;
                    font-size: 1rem;
                }
            }
        </style>
    </head>

    <body>
        <nav class="nav-container">
            <a href="#" class="logo">CampusLifeTools</a>
            <div class="nav-links">
                <a href="#" class="nav-item">Home</a>
            </div>
        </nav>

        <section class="hero">
            <div class="hero-content">
                <h1>Your All-in-One Campus Companion</h1>
                <p class="tagline">Manage Attendance, Schedules, Exams & Study Plans in One Place</p>
                <a href="login.jsp" class="cta-button">Get Started Now</a>
            </div>
        </section>
    </body>

    </html>