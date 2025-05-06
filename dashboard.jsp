<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Dashboard - Campus Life Tools</title>
        <style>
            /* Reuse theme variables */
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

            .nav-container {
                padding: 1.5rem 5%;
                display: flex;
                justify-content: space-between;
                align-items: center;
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
            }

            .logo {
                color: var(--text-light);
                font-size: 1.8rem;
                font-weight: 600;
                text-decoration: none;
                position: relative;
            }

            .logo::after {
                content: '';
                position: absolute;
                bottom: -5px;
                left: 0;
                width: 0;
                height: 2px;
                background: var(--accent-color);
                transition: width 0.3s ease;
            }

            .logo:hover::after {
                width: 100%;
            }

            .logout-btn {
                color: var(--text-light);
                text-decoration: none;
                padding: 0.5rem 1.2rem;
                border-radius: 20px;
                transition: all 0.3s ease;
            }

            .logout-btn:hover {
                background: rgba(255, 255, 255, 0.1);
            }

            .dashboard-container {
                max-width: 1200px;
                margin: 3rem auto;
                padding: 0 2rem;
            }

            .features-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
                gap: 2rem;
                padding: 2rem;
            }

            .feature-card {
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
                border-radius: 15px;
                padding: 2rem;
                text-align: center;
                cursor: pointer;
                transition: all 0.3s ease;
                transform: translateY(20px);
                opacity: 0;
                animation: fadeUp 0.6s ease forwards;
            }

            .feature-card:nth-child(1) {
                animation-delay: 0.2s;
            }

            .feature-card:nth-child(2) {
                animation-delay: 0.4s;
            }

            .feature-card:nth-child(3) {
                animation-delay: 0.6s;
            }

            .feature-card:nth-child(4) {
                animation-delay: 0.8s;
            }

            @keyframes fadeUp {
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .feature-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            }

            .feature-icon {
                font-size: 3rem;
                margin-bottom: 1rem;
                color: var(--accent-color);
            }

            .feature-title {
                color: var(--text-light);
                font-size: 1.5rem;
                margin-bottom: 1rem;
            }

            .feature-description {
                color: rgba(236, 240, 241, 0.8);
                font-size: 1rem;
                line-height: 1.5;
            }

            @media (max-width: 768px) {
                .features-grid {
                    grid-template-columns: 1fr;
                    padding: 1rem;
                }

                .dashboard-container {
                    margin: 1.5rem auto;
                }
            }
        </style>
    </head>

    <body>
        <nav class="nav-container">
            <a href="homepage.jsp" class="logo">CampusLifeTools</a>
            <a href="logout.jsp" class="logout-btn">Logout</a>
        </nav>

        <div class="dashboard-container">
            <div class="features-grid">
                <!-- Attendance Tracker -->
                <a href="attendance.jsp" class="feature-card">
                    <div class="feature-icon">📅</div>
                    <h2 class="feature-title">Attendance Tracker</h2>
                    <p class="feature-description">
                        Monitor your class attendance records and view detailed reports
                    </p>
                </a>

                <!-- Study Planner -->
                <a href="studyplanner.jsp" class="feature-card">
                    <div class="feature-icon">📚</div>
                    <h2 class="feature-title">Study Planner</h2>
                    <p class="feature-description">
                        Organize your study schedule and track academic goals
                    </p>
                </a>

                <!-- Exam Reminder -->
                <a href="examreminder.jsp" class="feature-card">
                    <div class="feature-icon">⏰</div>
                    <h2 class="feature-title">Exam Reminder</h2>
                    <p class="feature-description">
                        Never miss important exams with smart notifications
                    </p>
                </a>

                <!-- Timetable Manager -->
                <a href="timetable.jsp" class="feature-card">
                    <div class="feature-icon">🗓️</div>
                    <h2 class="feature-title">Timetable Manager</h2>
                    <p class="feature-description">
                        Create and manage your weekly class schedule
                    </p>
                </a>
            </div>
        </div>
    </body>

    </html>