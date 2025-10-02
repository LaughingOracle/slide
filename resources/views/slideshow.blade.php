<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

    <title>Slideshow</title>
    <style>
        :root{
            --x: 50%;
            --y: 50%;
            --radius: 120px;           /* spotlight radius */
            --overlay-opacity: 0.75;   /* darkness */
        }
        body{
            background-color: black;
            margin: 0;
            overflow: hidden;
        }

        .slideshow {
            position: relative;
            width: 100%;
            height: 100vh; /* force full height */
            overflow: hidden; /* ensures off-screen slides are invisible */
        }

        .slide {
            display: flex; 
            justify-content: center; 
            align-items: center;
            height: 100vh;
            position: absolute;
            top: 0;
            left: 100%;
            width: 100%;
            transition: left 0.5s ease-in-out;
        }
        .slide.active {
            left: 0;
            z-index: 1;
        }

        @media (orientation: portrait) {
            .modal-button {
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
            .modal-button {
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

        .modal-button.visible {
            opacity: 1;
            visibility: visible;
            transition: opacity 0.5s ease, visibility 0s; /* show instantly */
        }

        .modal-overlay {
            display: none;
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background-color: rgba(0, 0, 0, 0.6);
            justify-content: center;
            align-items: center;
            z-index: 99;
        }

        .modal-content {
            background: white;
            padding: 20px;
            border-radius: 8px;
            width: 90%;
            max-width: 400px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            font-size: 18px;
        }

        .modal-content input,
        .modal-content select,
        .modal-content button {
            box-sizing: border-box;
            display: block;
            width: 100%;
            margin-top: 10px;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .search-results {
            margin-top: 15px;
            max-height: 200px;
            overflow-y: auto;
            font-size: 16px;
        }

        .search-results div {
            padding: 10px;
            border-bottom: 1px solid #eee;
        }

        .search-results div:last-child {
            border-bottom: none;
        }

        .fit-img {
            display: flex; 
            justify-content: center; 
            align-items: center;
            max-width: 100%;
            max-height: 100%;
            object-fit: contain;
        }


        /* overlay that darkens the page but has a circular transparent hole at (var(--x),var(--y)) */
        .spot-overlay{
            position:fixed;
            inset:0;
            pointer-events:none; /* let clicks through */
            transition: opacity 360ms ease, visibility 360ms;
            opacity:0;
            visibility:hidden;
            z-index:9999;
            /* dark background */
            background: rgba(0,0,0,var(--overlay-opacity));
            /* mask creates a hole (transparent center) at the cursor position.
            We include both -webkit-mask and mask for better cross-browser coverage. */
            -webkit-mask: radial-gradient(circle var(--radius) at var(--x) var(--y), transparent 0, transparent calc(var(--radius) - 2px), black calc(var(--radius) - 1px));
            mask: radial-gradient(circle var(--radius) at var(--x) var(--y), transparent 0, transparent calc(var(--radius) - 2px), black calc(var(--radius) - 1px));
            /* soften the edge slightly by applying a subtle blur via box-shadow on a pseudo-element (optional) */
        }

        /* shown class triggers visibility */
        .spot-overlay.shown{
            opacity:1;
            visibility:visible;
        }

        /* optional: small ring at cursor */
        .cursor-ring{
            position:fixed;
            left:0;
            top:0;
            width: calc(var(--radius) * 2);
            height: calc(var(--radius) * 2);
            transform: translate(calc(var(--x) - 50%), calc(var(--y) - 50%));
            pointer-events:none;
            z-index:10000;
            mix-blend-mode: screen;
            opacity:0;
            transition: opacity 200ms;
        }
        .cursor-ring.visible{
            opacity:0.7;
        }
        .cursor-ring::before{
            content:"";
            display:block;
            width:100%;
            height:100%;
            border-radius:50%;
            box-shadow: 0 0 40px 10px rgba(255,255,255,0.08);
            background: radial-gradient(circle at 50% 50%, rgba(255,255,255,0.03) 0%, rgba(255,255,255,0) 60%);
        }

        /* small UI hint */
        .hint{
            position:fixed;
            bottom:12px;
            left:12px;
            background:rgba(0,0,0,0.35);
            color:#fff;
            padding:8px 10px;
            border-radius:8px;
            font-size:13px;
            backdrop-filter: blur(4px);
        }

        /* accessibility: reduce motion */
        @media (prefers-reduced-motion: reduce){
            .spot-overlay,
            .cursor-ring{
            transition: none;
            }
        }

    </style>
</head>
<body>


    <div class="spot-overlay" id="spot"></div>
    <div class="cursor-ring" id="ring" aria-hidden="true"></div>
    <div class="hint">Spotlight radius: <strong id="radiusLabel">120</strong>px — press <kbd>+</kbd>/<kbd>-</kbd> to change</div>

    <div class="slideshow">
        @foreach($posters as $poster)
            <div class="slide">
                <img 
                    data-src="{{ asset('storage/slides/' . $poster->legacyId . '.jpg') }}" 
                    class="fit-img"
                    alt="Poster {{ $poster->legacyId }}">
            </div>
        @endforeach
    </div>


    <button class="modal-button" onclick="toggleModal()">Cari poster</button>

    <div class="modal-overlay" id="searchModal">
        <div class="modal-content">
                <select id="searchColumn" onchange="performSearch()">
                    <option value="title">Judul</option>
                    <option value="peserta">Peserta</option>
                    <option value="legacyId">Coding</option>
                </select>
                <input type="text" id="searchQuery" placeholder="Enter search term" oninput="debouncedSearch()">
            <div class="search-results">
            <table id="searchResultsTable" style="width: 100%; border-collapse: collapse;">
                    <thead>
                        <tr>
                            <th style="text-align:left; padding: 10px; border-bottom: 1px solid #ccc;">Peserta</th>
                            <th style="text-align:left; padding: 10px; border-bottom: 1px solid #ccc;">Judul</th>
                            <th style="text-align:left; padding: 10px; border-bottom: 1px solid #ccc;">Action</th>
                        </tr>
                    </thead>
                    <tbody id="searchResultsBody">
                        <!-- JS will fill this -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script>
        let slides = document.querySelectorAll('.slide');
        let index = 0;

        function showSlide(i) {
            slides.forEach((slide, idx) => {
                const img = slide.querySelector('img');

                if (idx === i) {
                    slide.classList.add('active');

                    if (!img.src) {
                        img.src = img.dataset.src;
                    }

                    // Preload next slide’s image
                    const nextIdx = (i + 1) % slides.length;
                    const nextImg = slides[nextIdx].querySelector('img');
                    if (!nextImg.src) {
                        nextImg.src = nextImg.dataset.src;
                    }
                } else {
                    slide.classList.remove('active');
                }
            });
        }


        setInterval(() => {
            index = (index + 1) % slides.length;
            showSlide(index);
        }, 10000);

        showSlide(index);


        // Modal
        function toggleModal() {
            const modal = document.getElementById('searchModal');
            modal.style.display = modal.style.display === 'flex' ? 'none' : 'flex';
        }

        window.addEventListener('click', function(e) {
            const modal = document.getElementById('searchModal');
            if (e.target === modal) modal.style.display = 'none';
        });

        // Search AJAX
        async function performSearch() {
            const column = document.getElementById('searchColumn').value;
            const query = document.getElementById('searchQuery').value;
            const pathParts = window.location.pathname.split('/');
            const tv = pathParts[pathParts.length - 1]; // Gets "123" from /slide/123
            sessionStorage.setItem("tv", tv);
            const resultsBody = document.getElementById('searchResultsBody');

            resultsBody.innerHTML = '<tr><td colspan="3" style="padding: 10px;">Searching...</td></tr>';

            try {
                const response = await fetch(`/search?column=${column}&query=${encodeURIComponent(query)}`);
                const data = await response.json();
                resultsBody.innerHTML = '';

                if (!Array.isArray(data) || data.length === 0) {
                    resultsBody.innerHTML = '<tr><td colspan="3" style="padding: 10px;">No results found.</td></tr>';
                    return;
                }

                // Search Query
                data.forEach(item => {
                    resultsBody.innerHTML += `
                        <tr>
                            <td style="padding: 10px; border-bottom: 1px solid #eee;">${item.name ?? '-'}</td>
                            <td style="padding: 10px; border-bottom: 1px solid #eee;">
                                ${(item.title ?? '-').length > 50 ? (item.title.substring(0, 50) + '...') : (item.title ?? '-')}
                            </td>
                            <td style="padding: 10px; border-bottom: 1px solid #eee;">
                                <form action="/view/${item.id}" method="GET">
                                    <button type="submit">View</button>
                                </form>
                            </td>
                        </tr>`;
                    });
            } catch (error) {
                resultsBody.innerHTML = '<tr><td colspan="3" style="padding: 10px;">Error during search.</td></tr>';
            }
        }

        let searchTimeout = null;

        function debouncedSearch() {
            clearTimeout(searchTimeout);
            searchTimeout = setTimeout(() => {
                performSearch();
            }, 300); // Delay in milliseconds (300ms is common for debounce)
        }


            let searchBtnTimeout = null;

        function showSearchButton() {
            const button = document.querySelector('.modal-button');

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
        document.querySelector('.slideshow').addEventListener('click', showSearchButton);

        (function(){
            const overlay = document.getElementById('spot');
            const ring = document.getElementById('ring');
            const radiusLabel = document.getElementById('radiusLabel');

            // configuration
            let hideDelay = 3000; // ms to wait after last movement before hiding
            let radius = 120;     // initial radius (keeps in sync with CSS root variable)

            // keep track of timeout
            let hideTimer = null;

            // show overlay immediately and reset hide timer
            function showAndResetTimer(){
                overlay.classList.add('shown');
                ring.classList.add('visible');
                // clear previous timer
                if (hideTimer) {
                clearTimeout(hideTimer);
                hideTimer = null;
                }
                // set new timer to hide after inactivity
                hideTimer = setTimeout(() => {
                overlay.classList.remove('shown');
                ring.classList.remove('visible');
                hideTimer = null;
                }, hideDelay);
            }

            // update CSS variables for position and radius
            function updatePosition(x, y){
                document.documentElement.style.setProperty('--x', x + 'px');
                document.documentElement.style.setProperty('--y', y + 'px');
                document.documentElement.style.setProperty('--radius', radius + 'px');
                // update ring transform uses CSS variables (we also nudge ring via transform)
                ring.style.transform = `translate(${x - radius}px, ${y - radius}px)`;
                radiusLabel.textContent = radius;
            }

            // handle pointer movement (mouse or touch)
            function onPointerMove(e){
                // depending on event type
                let clientX, clientY;
                if (e.touches && e.touches.length){
                clientX = e.touches[0].clientX;
                clientY = e.touches[0].clientY;
                } else {
                clientX = e.clientX;
                clientY = e.clientY;
                }
                updatePosition(clientX, clientY);
                showAndResetTimer();
            }

            // hide when leaving window (but still wait hideDelay so it's not abrupt)
            function onPointerLeave(){
                if (hideTimer) {
                clearTimeout(hideTimer);
                }
                hideTimer = setTimeout(() => {
                overlay.classList.remove('shown');
                ring.classList.remove('visible');
                hideTimer = null;
                }, hideDelay);
            }

            // initial set
            document.documentElement.style.setProperty('--radius', radius + 'px');

            // event listeners
            window.addEventListener('mousemove', onPointerMove, {passive:true});
            window.addEventListener('touchstart', onPointerMove, {passive:true});
            window.addEventListener('touchmove', onPointerMove, {passive:true});
            window.addEventListener('mouseleave', onPointerLeave);
            window.addEventListener('blur', onPointerLeave);

            // allow runtime radius adjust with +/- keys for demo
            window.addEventListener('keydown', (ev) => {
                if (ev.key === '+' || ev.key === '=' ){
                radius = Math.min(500, radius + 10);
                document.documentElement.style.setProperty('--radius', radius + 'px');
                radiusLabel.textContent = radius;
                } else if (ev.key === '-' || ev.key === '_'){
                radius = Math.max(20, radius - 10);
                document.documentElement.style.setProperty('--radius', radius + 'px');
                radiusLabel.textContent = radius;
                }
            });

            // ensure overlay is hidden initially until first move
            overlay.classList.remove('shown');
            ring.classList.remove('visible');

            // Accessibility: if user prefers reduced motion, shorten transitions/hide immediately
            if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
                hideDelay = 1000;
            }

            })();


    </script>


</body>
</html>
