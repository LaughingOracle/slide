<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form method="POST" action="/slide" enctype="multipart/form-data" id="slideForm">
        @csrf
        <br>
        <input type="text" name="name" placeholder="Peserta">
        <br>
        <br>
        <input type="text" name="title" placeholder="Judul">
        <br>
        <br>
        <input type="text" name="tv" placeholder="tv">
        <br>
        <br>
        <input type="text" name="legacyId" placeholder="Coding">
        <br>
        <br>
        <input type="file" name="image" required>
        <br>
        <br>
        <button type="submit">Upload</button>
    </form>

    <br>
    <br>

    @foreach($grouped as $tv => $entries)
        <h2>TV: {{ $tv }}</h2>
        <table>
            @foreach($entries as $entry)
                <tr>
                    <td> {{ $entry->name }} - </td>
                    <td> {{ $entry->title }} - </td> 
                    <td>
                        <form action="{{ route('posterDelete', $entry->id) }}" method="POST"> 
                            @csrf 
                            @method('DELETE')
                            <button type="submit" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </table>
    @endforeach


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