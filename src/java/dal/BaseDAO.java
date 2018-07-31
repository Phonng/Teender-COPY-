/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.IModel;

/**
 *
 * @author emsnguyen
 */
public abstract class BaseDAO <T extends IModel> {
    public Connection connection;
    public BaseDAO() {
        try {
            String username = "sa";
            String password = "sa";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=TeenderExport";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url,username,password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public abstract ArrayList<T> getAll();
    public abstract T get(int index);
    public abstract boolean delete(T model);
    public abstract boolean update(T model);
    public abstract boolean insert(T model);
}
