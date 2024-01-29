
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DriveLinkConverter {

	public static String convertToDownloadLink(String driveLink) {
		Pattern pattern = Pattern.compile("/d/(.*?)/view");
		Matcher matcher = pattern.matcher(driveLink);

		// Check if the pattern is found
		if (matcher.find()) {
			// Extract the file ID
			String fileId = matcher.group(1);

			// Construct the direct download link
			return "https://drive.google.com/uc?export=download&id=" + fileId;
		} else {
			// Return "Invalid Link" if the pattern is not found
			return "Invalid Link";
		}
	}
}