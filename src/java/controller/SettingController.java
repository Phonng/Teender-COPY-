/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserInfoDAO;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import model.UserInfo;

/**
 *
 * @author emsnguyen
 */
public class SettingController extends BaseAuthenticationController {

    @Override
    protected void handlePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int userID = Integer.parseInt(request.getParameter("userID");
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String nickname = request.getParameter("nickname");
        String birthDate = request.getParameter("birthDate");
        String aboutMe = request.getParameter("aboutme");
        String address = request.getParameter("address");
        String work = request.getParameter("work");
        String online = request.getParameter("online");
        boolean isOnline = false;
        if (online.equals("yes")) {
            isOnline = true;
        }
        String preferMale = request.getParameter("preferMale");
        boolean isPreferMale = false;
        if (preferMale.equals("male")) {
            isPreferMale = true;
        }
        User u = (User) request.getSession().getAttribute("user");
        UserInfo info = new UserInfo(u, nickname, aboutMe, Date.valueOf(birthDate), work, address, isOnline, isPreferMale);
        UserInfoDAO infoDB = new UserInfoDAO();
        if (infoDB.get(u.getUserID()) == null)  {
            if (infoDB.insert(info)) {
                response.sendRedirect("changeavatar");
            } else {
                response.getWriter().write("error inserting new user info");
            }
        } else {
            if (infoDB.update(info)) {
                response.sendRedirect("changeavatar");
            } else {
                response.getWriter().write("error updating user info");
            }
        }
        
    }

    @Override
    protected void handleGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("settings.jsp").forward(request, response);
    }

}
