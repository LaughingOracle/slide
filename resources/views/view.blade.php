<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <style>
        body{
            background-color: black;
            margin: 0;
            overflow: hidden;
        }

        .back-button {
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.5s ease, visibility 0s linear 0.5s; /* delay visibility hide */
            position: fixed;
            bottom: 20px;
            left: 20px;
            background-color: #3490dc;
            color: white;
            border: none;
            height: 10%;
            width: 50%;
            border-radius: 15px;
            font-size: 10vw;
            cursor: pointer;
            z-index: 100;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }

        @media (orientation: portrait) {
            .back-button {
                opacity: 0;
                visibility: hidden;
                transition: opacity 0.5s ease, visibility 0s linear 0.5s; /* delay visibility hide */
                position: fixed;
                bottom: 20px;
                right: 20px;
                background-color: #3490dc;
                color: white;
                border: none;
                padding: 14px 18px;
                height: 100px;
                width: 300px;
                border-radius: 15px;
                font-size: 30px;
                cursor: pointer;
                z-index: 100;
                box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            }
        }

        /* Landscape (horizontal) */
        @media (orientation: landscape) {
            .back-button {
                opacity: 0;
                visibility: hidden;
                transition: opacity 0.5s ease, visibility 0s linear 0.5s; /* delay visibility hide */
                position: fixed;
                bottom: 20px;
                right: 20px;
                background-color: #3490dc;
                color: white;
                border: none;
                padding: 14px 18px;
                height: 100px;
                width: 300px;
                border-radius: 15px;
                font-size: 30px;
                cursor: pointer;
                z-index: 100;
                box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            }
        }




        .back-button.visible {
            opacity: 1;
            visibility: visible;
            transition: opacity 0.5s ease, visibility 0s; /* show instantly */
        }

        .centr{
            display: flex; 
            justify-content: center; 
            align-items: center;
            height: 100vh;
        }

        .fit-img {
            display: flex; 
            justify-content: center; 
            align-items: center;
            max-width: 100%;
            max-height: 100%;
            object-fit: contain;
        }
    </style>
</head>
<body>
    <div class='centr'>
        <img src="{{ asset('storage/slides/' . $poster->id . '.png') }}" class="fit-img">
    </div>
    <form id="tv-form" method="GET">
        <button class='back-button'><- Balik</button>
    </form>
    <script>
        let searchBtnTimeout = null;

        function showSearchButton() {
            const button = document.querySelector('.back-button');

            // Clear any existing timeout
            if (searchBtnTimeout) {
                clearTimeout(searchBtnTimeout);
            }

            // Show the button with fade-in
            button.classList.add('visible');

            // Set timeout to hide it after 5 seconds
            searchBtnTimeout = setTimeout(() => {
                button.classList.remove('visible');
            }, 5000); // 5000ms = 5 seconds
        }

        // Trigger on click — change the selector if you want a different trigger
        document.querySelector('.centr').addEventListener('click', showSearchButton);

        document.addEventListener("DOMContentLoaded", function () {
            const form = document.getElementById("tv-form");
            const tvValue = sessionStorage.getItem("tv");

            if (tvValue) {
                // Replace this with your actual route prefix
                form.action = `/slide/${encodeURIComponent(tvValue)}`;
            }
        });
    </script>
</body>
</html>