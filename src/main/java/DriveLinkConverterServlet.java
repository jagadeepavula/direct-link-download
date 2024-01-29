import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DriveLinkConverterServlet")
public class DriveLinkConverterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get the drive link from the HTML form
		String driveLink = request.getParameter("driveLink");

		// Convert the link using the Java logic
		String downloadLink = DriveLinkConverter.convertToDownloadLink(driveLink);

		if (!downloadLink.equals("Invalid Link")) {
			// Set the result as an attribute to be displayed in the JSP
			request.setAttribute("downloadLink", downloadLink);

			// Forward to the result page (result.jsp)
			request.getRequestDispatcher("result.jsp").forward(request, response);
		} else {
			// Redirect back to the index page with an error message
			response.sendRedirect("index.jsp?error=invalidLink");
		}
	}
}