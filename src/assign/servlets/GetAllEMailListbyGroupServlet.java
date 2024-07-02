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

public class GetAllEMailListbyGroupServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
	String errors = "";
	String groupID = request.getParameter("groupid");
	
	System.out.println(groupID);
    response.setContentType("text/html");

	EMailBO eMailBO = new EMailBO();
	EMailAddressVOO[] eMailList = null;

	try{
		ArrayList list =  eMailBO.getAllEMailAddressListbyGroup(groupID);
		Object[] aList = list.toArray(new EMailAddressVOO[list.size()]);
		eMailList = new EMailAddressVOO[list.size()];
		for (int i = 0;i < aList.length;i++) {
			eMailList[i] = (EMailAddressVOO) aList[i];
			//System.out.println("get all emails by group 77777777777 "+eMailList[i].geteMailID());
		}

	}catch (EMailValidationException emve){
		errors = emve.getErrorMessage();
	} 
	catch (Exception e){
		e.printStackTrace();
	}
	if (errors.equals("")){
		request.getSession().setAttribute("groupID", groupID);	
		request.getSession().setAttribute("emailList", eMailList);	
		response.sendRedirect("/mysite/viewallgroups.jsp");	

	}
	else {
		request.getSession().setAttribute("Errors", errors);
		response.sendRedirect("/mysite/error.jsp");
	}
    }

    public void doPost(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        doGet(request, response);
    }

}

