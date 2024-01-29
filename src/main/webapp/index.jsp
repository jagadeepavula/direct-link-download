<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Drive Link Converter</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles.css">

<script>
	// Check for the "error" parameter in the URL
	var urlParams = new URLSearchParams(window.location.search);
	var errorParam = urlParams.get('error');

	// Display an alert if "error" is present
	if (errorParam === 'invalidLink') {
		alert('Invalid Link! Please enter a valid Google Drive link.');
	}
</script>
</head>
<body>
	<div class="container">
		<h1>Drive Link Converter</h1>

		<form action="DriveLinkConverterServlet" method="post">
			<label for="driveLink">Enter Google Drive Link:</label> <input
				type="text" id="driveLink" name="driveLink"
				placeholder="Enter or Paste your link here">
			<button type="submit">Generate</button>
			<button type="reset">Clear</button>
		</form>
	</div>
</body>
</html>
