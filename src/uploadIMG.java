import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/uploadIMG")
public class uploadIMG extends HttpServlet{
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException{
		String fileName = request.getParameter("upload");
		System.out.println(fileName);
	}
}
