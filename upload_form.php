<!DOCTYPE html>
<html>
<head>
    <title>Upload Students Excel</title>
    <style>
        body { font-family: Arial; background: #f4f6f8; }
        .container { width: 400px; margin: 100px auto; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); text-align: center; }
        h2 { margin-bottom: 20px; color: #333; }
        input[type="file"] { width: 100%; padding: 8px; margin-bottom: 15px; }
        button { background: #007bff; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; }
        button:hover { background: #0056b3; }
        .success { color: green; margin-bottom: 15px; }
        .error { color: red; margin-bottom: 15px; }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/xlsx/dist/xlsx.full.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Upload Students Excel (.xlsx)</h2>

    <?php if(session()->getFlashdata('error')): ?>
        <div class="error"><?= session()->getFlashdata('error') ?></div>
    <?php endif; ?>

    <form id="csvForm" method="post" action="/student/upload" enctype="multipart/form-data">
        <input type="hidden" name="csv_file" id="csv_file">
    </form>

    <input type="file" id="excelFile" accept=".xlsx" required>
    <button onclick="convertAndUpload()">Upload</button>
</div>

<script>
function convertAndUpload() {
    const fileInput = document.getElementById('excelFile');
    if (!fileInput.files.length) { alert("Please select an Excel file"); return; }

    const reader = new FileReader();
    reader.onload = function(e) {
        const data = new Uint8Array(e.target.result);
        const workbook = XLSX.read(data, { type: 'array' });
        const firstSheet = workbook.Sheets[workbook.SheetNames[0]];
        const csv = XLSX.utils.sheet_to_csv(firstSheet);

        const blob = new Blob([csv], { type: 'text/csv' });
        const csvFile = new File([blob], "students.csv", { type: "text/csv" });

        const dataTransfer = new DataTransfer();
        dataTransfer.items.add(csvFile);

        const hiddenInput = document.createElement("input");
        hiddenInput.type = "file";
        hiddenInput.name = "csv_file";
        hiddenInput.files = dataTransfer.files;

        const form = document.getElementById("csvForm");
        form.appendChild(hiddenInput);
        form.submit();
    };
    reader.readAsArrayBuffer(fileInput.files[0]);
}
</script>
</body>
</html>
