import org.apache.catalina.servlet4preview.http.HttpServletRequest;

public class UploadIMG extends HttpServlet{
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException{
		String fileName = request.getParameter("upload");
		System.out.println(fileName)
	}

}
