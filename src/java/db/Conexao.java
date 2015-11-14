/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author x-e
 */
public class Conexao {
     
    public Connection getConnection() {
        try {
            return (Connection) DriverManager.getConnection("jdbc:mysql://localhost", "root","");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void testeCon() throws SQLException, ClassNotFoundException{
         Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection conexao = DriverManager.getConnection(
          "jdbc:mysql://localhost/");
        System.out.println("Conectado!");
        conexao.close();
    }
}
