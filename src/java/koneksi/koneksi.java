/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author aditprayogo
 */
public class koneksi {
    public Connection openConnection() throws SQLException {
        Connection connect;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connect = (Connection) DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/uts_jsp", "root", "");
            return connect;
        } catch (Exception e) {
        }
        return null;
               
    }
    
}
