/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.sun.net.httpserver.HttpServer;
import dal.MessageDAO;
import dal.UserDAO;
import dal.UserInfoDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Message;
import model.User;

/**
 *
 * @author emsnguyen
 */
public class ChatController extends BaseAuthenticationController {

    @Override
    protected void handlePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.getRequestDispatcher("chat.jsp").forward(request, response);
        //add to message table
    }
    protected void prepare(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    @Override
    protected void handleGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u = (User) request.getSession().getAttribute("user");
        int user1ID = u.getUserID();
//        int user2ID = Integer.parseInt(request.getParameter("user2ID"));
        
        //get all friends of a user
        UserInfoDAO infoDB = new UserInfoDAO();
        Hashtable<Integer, String> friends = infoDB.getAllFriends(user1ID);
        request.getSession().setAttribute("friends", friends);
        
//        set id as attributes to retrieve information later on
//        UserInfo user2 = new UserInfoDAO().get(user2ID);
//        request.setAttribute("user2ID", user2ID);

        //get all messages between two users
//        MessageDAO msgDB = new MessageDAO();
//        ArrayList<Message> messages = msgDB.getAll(user1ID, user2ID);
//        request.setAttribute("messages", messages);

        //get all other people that this person chatted with
//        ArrayList<User> friends = msgDB.getConnectedUsers(user1ID);
//        request.setAttribute("friends", friends);
        request.getRequestDispatcher("chat.jsp").forward(request, response);
    }

}
