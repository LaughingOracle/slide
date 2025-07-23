<form method="POST" action="/slide" enctype="multipart/form-data">
    @csrf
    <input type="file" name="image" required>
    <input type="text" name="name" placeholder="name">
    <input type="text" name="title" placeholder="title">
    <input type="text" name="tv" placeholder="tv">
    <input type="text" name="legacyId" placeholder="legacyId">
    <button type="submit">Upload</button>
</form>