<!DOCTYPE html><html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FINAL WEBSITE</title>
    <style>
        body {
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to bottom, #aadfff, #1e3a8a);
            color: white;
            font-family: 'Poppins', sans-serif;
            text-align: center;
            overflow: hidden;
        }
        .container {
            background: rgba(255, 255, 255, 0.15);
            padding: 30px;
            border-radius: 20px;
            backdrop-filter: blur(15px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1.5s ease-in-out;
        }
        h1 {
            font-size: 3rem;
            letter-spacing: 2px;
            text-transform: uppercase;
        }
        p {
            font-size: 1.3rem;
            opacity: 0.85;
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            background: white;
            color: #1e3a8a;
            border-radius: 50px;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.1rem;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.3);
        }
        .btn:hover {
            background: #dbeafe;
            transform: scale(1.1);
            box-shadow: 0 6px 15px rgba(255, 255, 255, 0.5);
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .floating-bubbles {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            overflow: hidden;
        }
        .bubble {
            position: absolute;
            bottom: -50px;
            width: 30px;
            height: 30px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            animation: floatUp 6s infinite ease-in-out;
        }
        @keyframes floatUp {
            from { transform: translateY(0); opacity: 1; }
            to { transform: translateY(-100vh); opacity: 0; }
        }
    </style>
</head>
<body>
    <font face="times new roman"
    <div class="floating-bubbles">
        <div class="bubble" style="left: 10%; animation-duration: 5s;"></div>
        <div class="bubble" style="left: 25%; animation-duration: 7s;"></div>
        <div class="bubble" style="left: 50%; animation-duration: 6s;"></div>
        <div class="bubble" style="left: 75%; animation-duration: 8s;"></div>
        <div class="bubble" style="left: 90%; animation-duration: 4s;"></div>
    </div>
    <div class="container">
        <h1>WELCOME TO MY WEBSITE </h1>
        <p>✨Enjoy reading some descriptions of different festivals in the Philippines✨</p>
        <a href="sinulog.html" class="btn">Get Started</a>
    </div>
</body>
</html>
