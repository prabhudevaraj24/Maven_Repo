<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buggy HTML</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            color: blue;
        }

        p {
            font-size: 16px;
        }
    </style>
</head>
<body>

    <h1>Buggy HTML Page</h1>

    <p>This is a paragraph with mismatched tags that may cause rendering issues<p>

    <img src="broken_image.jpg" alt="Broken Image">

    <script>
        // This script has a deliberate error
        document.getElementById('nonexistent-element').innerHTML = 'This element does not exist';
    </script>

</body>
</html>
