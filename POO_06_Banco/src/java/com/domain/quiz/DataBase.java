package com.domain.quiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.rmi.runtime.Log;

public class DataBase {

    String login = "root";
    String senha = "root";
    public Connection con =  null;

    public DataBase() {
        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            String url = "jdbc:derby://localhost:1527/db_quiz";
            con = DriverManager.getConnection(url, login, senha);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
