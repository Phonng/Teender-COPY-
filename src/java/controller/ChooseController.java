/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDAO;
import dal.UserInfoDAO;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;
import model.UserInfo;

/**
 *
 * @author emsnguyen
 */
public class ChooseController extends BaseAuthenticationController {
    @Override
    protected void handlePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    @Override
    protected void handleGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //son
        UserDAO ud = new UserDAO();
        HttpSession session = request.getSession();
        
        int userID = (Integer) session.getAttribute("userID");
        ArrayList<Integer> index = ud.getChooseList(userID);
        if (index.isEmpty()) {
            response.sendRedirect("fullSlot.jsp");
            return;
        }
        
        request.setAttribute("index", index.get(0));
        request.getRequestDispatcher("choose.jsp").forward(request, response);
        
        /*
        //mien
        UserDAO ud = new UserDAO();
        HttpSession session = request.getSession();
        
        User u = (User) session.getAttribute("user");
        int userID = u.getUserID();
        ArrayList<Integer> index = ud.getChooseList(userID);
        if (index.isEmpty()) {
            response.sendRedirect("fullSlot.jsp");
            return;
        }
        User nextperson = ud.get(index.get(0));
        if (nextperson == null) {
            response.sendRedirect("fullSlot.jsp");
            return;
        }
        System.out.println("user id: " + u.getUserID());
        System.out.println("next person id: " + nextperson.getUserID());
        UserInfoDAO infoDB = new UserInfoDAO();
        UserInfo info = infoDB.get(nextperson.getUserID());
        if (info == null) {
            response.sendRedirect("fullSlot.jsp");
            return;
        }
        
        
        request.setAttribute("info", info); 
        
        //fetch user avatar from web app folder
        String realPath = getServletContext().getRealPath("/");
        String jpg = realPath + "uploads\\" + nextperson.getUsername()+ ".jpg";
        File fileJpg = new File(jpg);
        String png = realPath + "uploads\\" + nextperson.getUsername() + ".png";
        File filePng = new File(png);
        String jpeg = realPath + "uploads\\" + nextperson.getUsername() + ".jpeg";
        File fileJpeg = new File(jpeg);
        if (fileJpg.exists()) {
            request.getSession().setAttribute("avatarPath", "uploads/" + nextperson.getUsername() + ".jpg");
        } else if (filePng.exists()) {
            request.getSession().setAttribute("avatarPath", "uploads/" + nextperson.getUsername() + ".png");
        } else if (fileJpeg.exists()) {
            request.getSession().setAttribute("avatarPath", "uploads/" + nextperson.getUsername() + ".jpeg");
        } else {
            request.getSession().setAttribute("avatarPath", "img/logo.jpg");
        }
        request.getRequestDispatcher("choose.jsp").forward(request, response);
*/
    }
}