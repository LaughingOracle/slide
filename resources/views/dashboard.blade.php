<form method="POST" action="/slide" enctype="multipart/form-data">
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