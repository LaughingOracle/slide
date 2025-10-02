<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form method="POST" action="{{ route('updateSlide', $poster->id) }}" enctype="multipart/form-data" id="slideForm">
        @csrf
        <br>
        <input type="hidden" name="id" value="{{$poster->id}}">
        <label for="name">peserta</label><br>
        <input type="text" name="name" value="{{$poster->name}}">
        <br>
        <br>
        <label for="title">judul</label><br>
        <input type="text" name="title" value="{{$poster->title}}">
        <br>
        <br>
        <label for="tv">tv</label><br>
        <input type="text" name="tv" value="{{$poster->tv}}">
        <br>
        <br>
        <label for="legacyId">koding</label><br>
        <input type="text" name="legacyId" value="{{$poster->legacyId}}">
        <br>
        <br>
        <label for="image">gambar poster</label>
        <input type="file" name="image">
        <br>
        <br>
        <button type="submit">update</button>
    </form>

    <br>
    <br>
    <img src="{{ asset('storage/slides/' . $poster->legacyId . '.jpg') }}" style="width:240px; height:426;">

    <script>
        document.querySelectorAll("#slideForm input").forEach((input, index, inputs) => {
            input.addEventListener("keydown", function (e) {
                if (e.key === "Enter") {
                    e.preventDefault(); // stop form submit
                    let next = inputs[index + 1];
                    if (next) {
                        next.focus();
                    } else {
                        // if it's the last input, focus the button
                        document.querySelector("#slideForm button[type=submit]").focus();
                    }
                }
            });
        });
    </script>
</body>
</html>