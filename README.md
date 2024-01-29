# Drive Link Converter

## Description

Drive Link Converter is a simple web application that converts Google Drive sharing links to direct download links. It extracts the file ID from the Drive link and constructs a direct download link, making it easier for users to download files.

## Usage

1. Enter a Google Drive sharing link in the provided input field.
2. Click the "Generate" button to convert the link.
3. The direct download link will be displayed on the result page.

## How It Works

The application uses a Java servlet (`DriveLinkConverterServlet`) to handle the conversion process. The core conversion logic is implemented in the `DriveLinkConverter` Java class. The result is then displayed to the user using JSP pages.

## Project Structure

- `src/main/java/`: Java source files.
  - `DriveLinkConverterServlet.java`: Servlet for handling link conversion.
  - `DriveLinkConverter.java`: Java class containing the conversion logic.

- `src/main/webapp/`: Web application files.
  - `index.jsp`: Main page with the input form.
  - `result.jsp`: Page displaying the result and download link.
  - `styles.css`: CSS file for styling.

## Contributing

Feel free to contribute to the project by opening issues or submitting pull requests.

## License

This project is licensed under the [MIT License](LICENSE.md).