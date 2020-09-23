package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Map;
import service.AdminServiceImpl;
import service.IAdminService;



public class GoogleMapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GoogleMapServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");

		Map map = new Map();
		
		map.setOwnername(request.getParameter("ownername"));
		map.setLocation(request.getParameter("location"));
		map.setLongtitiude(request.getParameter("longtitude"));
		map.setLatitude(request.getParameter("latitude"));
		
		
	   IAdminService iadminService = new  AdminServiceImpl();
		iadminService.adddetails(map);
		
		
		
		
	}

}
