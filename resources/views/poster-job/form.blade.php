
<div class="max-w-xl mx-auto mt-10">

    <h1 class="text-2xl font-bold mb-4">
        Poster Import Job
    </h1>

    @if ($errors->any())
        <div class="mb-4 p-3 bg-red-100 text-red-700 rounded">
            {{ $errors->first() }}
        </div>
    @endif

    @if (session('success'))
        <div class="mb-4 p-3 bg-green-100 text-green-700 rounded">
            {{ session('success') }}
        </div>
    @endif

    <form method="POST" action="{{ route('poster.job.run') }}">
        @csrf

        <label class="block mb-2 font-semibold">
            Google Drive ZIP Link
        </label>

        <input
            type="url"
            name="drive_url"
            required
            class="w-full border rounded p-2 mb-4"
            placeholder="Paste Google Drive share link here"
        >

        <button
            type="submit"
            class="bg-blue-600 text-white px-4 py-2 rounded"
        >
            Run Job
        </button>
    </form>

    <form method="POST" action="/admin/sql-import" enctype="multipart/form-data">
    @csrf
    <input type="file" name="csv_file" accept=".csv" required>
        <button type="submit">Import CSV</button>
    </form>


</div>

