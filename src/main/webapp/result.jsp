<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Drive Link Converter Result</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+Tamil:wght@100;300;500;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<div class="container">
		<h1>Drive Link Converter Result</h1>
		<h2>Direct Download Link</h2>
		<p>${requestScope.downloadLink}</p>
	</div>
	<div class="button-container">
		<button onclick="copyToClipboard()">Copy Link</button>
		<button onclick="goBack()">Back</button>
	</div>

	<script>
		window.addEventListener('popstate', function() {
			window.location.href = 'index.jsp';
		});

		// Function to handle the back button click
		function goBack() {
			window.location.href = 'index.jsp';
		}

		function copyToClipboard() {
			var downloadLink = "${requestScope.downloadLink}";
			var tempInput = document.createElement("input");
			tempInput.value = downloadLink;
			document.body.appendChild(tempInput);
			tempInput.select();
			document.execCommand("copy");
			document.body.removeChild(tempInput);
			alert("Link Copied!!");
		}
	</script>
</body>
</html>
