package assign.servlets;

import java.io.*;
import java.util.ArrayList;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import assign.dbaccess.EMailAddressVOO;
import assign.dbaccess.EMailDBAccess;
import assign.dbaccess.EMailBO;
import assign.dbaccess.EMailValidationException;

/*
 * Get All Email Addresses by Group Servlet 
 */

public class UpdateContactInfo extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
		String errors = "";
		EMailAddressVOO eMailAddressVOO = (EMailAddressVOO) request.getAttribute("emailVO");
		EMailAddressVOO eMailAddressVO = new EMailAddressVOO();
		eMailAddressVO.setwPhone(request.getParameter("wphone"));
		eMailAddressVO.setmPhone(request.getParameter("mphone"));
		String eMailAddress = (String) request.getSession().getAttribute("email");
		EMailBO eMailBO = new EMailBO();
		System.out.println(eMailAddress);
		try {
			eMailBO.updatePhoneNumbers(eMailAddress, eMailAddressVO.getwPhone(), eMailAddressVO.getmPhone());
			System.out.println("Updated Successfully");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (errors.equals("")) {
			response.sendRedirect("/mysite/home.jsp");
		} else {
			request.getSession().setAttribute("Errors", errors);
			response.sendRedirect("/mysite/modifycontact.jsp");
		}
    }
	
    public void doPost(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        doGet(request, response);
    }

}

