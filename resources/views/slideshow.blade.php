<style>
    body{
        background-color: black;
        margin: 0;
        overflow: hidden;
    }

    .slideshow {
        width: 100%;
        height: auto;
        overflow: hidden;
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
        border-radius: 50%;
        font-size: 24px;
        cursor: pointer;
        z-index: 100;
        box-shadow: 0 4px 8px rgba(0,0,0,0.3);
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
        height: 100vh;
        object-fit: cover; /* or "contain", depending on what you want */
    }

</style>

<div class="slideshow">
    @foreach($posters as $poster)
        <div class="slide">
            <img src="{{ asset('storage/slides/' . $poster->id . '.png') }}" class="fit-img">
        </div>
    @endforeach
</div>

<button class="modal-button" onclick="toggleModal()">🔍</button>

<div class="modal-overlay" id="searchModal">
    <div class="modal-content">
            <select id="searchColumn" onchange="performSearch()">
                <option value="name">Name</option>
                <option value="title">Title</option>
                <option value="legacyId">Id</option>
            </select>
            <input type="text" id="searchQuery" placeholder="Enter search term" oninput="debouncedSearch()">
        <div class="search-results">
        <table id="searchResultsTable" style="width: 100%; border-collapse: collapse;">
                <thead>
                    <tr>
                        <th style="text-align:left; padding: 10px; border-bottom: 1px solid #ccc;">Name</th>
                        <th style="text-align:left; padding: 10px; border-bottom: 1px solid #ccc;">Title</th>
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
            slide.classList.toggle('active', idx === i);
        });
    }

    setInterval(() => {
        index = (index + 1) % slides.length;
        showSlide(index);
    }, 10000);

    showSlide(index);


        function toggleModal() {
        const modal = document.getElementById('searchModal');
        modal.style.display = modal.style.display === 'flex' ? 'none' : 'flex';
    }

    window.addEventListener('click', function(e) {
        const modal = document.getElementById('searchModal');
        if (e.target === modal) modal.style.display = 'none';
    });

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


    async function performSearch() {
    const column = document.getElementById('searchColumn').value;
    const query = document.getElementById('searchQuery').value;
    const pathParts = window.location.pathname.split('/');
    const tv = pathParts[pathParts.length - 1]; // Gets "123" from /slide/123
    const resultsBody = document.getElementById('searchResultsBody');

    resultsBody.innerHTML = '<tr><td colspan="3" style="padding: 10px;">Searching...</td></tr>';

    try {
        const response = await fetch(`/search?column=${column}&tv=${tv}&query=${encodeURIComponent(query)}`);
        const data = await response.json();
        resultsBody.innerHTML = '';

        if (!Array.isArray(data) || data.length === 0) {
            resultsBody.innerHTML = '<tr><td colspan="3" style="padding: 10px;">No results found.</td></tr>';
            return;
        }

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
                </tr>
            `;
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
</script>
