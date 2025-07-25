<style>
    body{
        background-color: black;
        margin: 0;
        overflow: hidden;
    }

    .back-button {
        position: fixed;
        bottom: 20px;
        left: 20px;
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

    .centr{
        display: flex; 
        justify-content: center; 
        align-items: center;
        height: 100vh;
    }

    .fit-img {
        height: 100vh;
        object-fit: cover; /* or "contain", depending on what you want */
    }
</style>
<div class='centr'>
    <img src="{{ asset('storage/slides/' . $poster->id . '.png') }}" class="fit-img">
</div>
<form method="GET" action=" {{  route('slide.tv', ['tv' => $poster->tv])  }} ">
    <button class='back-button'><-</button>
</form>