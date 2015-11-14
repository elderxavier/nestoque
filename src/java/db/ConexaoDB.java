
package db;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;


public class ConexaoDB {
    public static String status = "Não conectou...";
    
    public ConexaoDB(){
    }
    
    public static java.sql.Connection getConexaoMySQL() { 
        Connection connection = null;
        try { 
            String driverName = "com.mysql.jdbc.Driver"; 
            Class.forName(driverName); 
            //String serverName = "127.5.221.130";            
            //String serverName = "nestoque-elderxavier.rhcloud.com:3306";
            //String mydatabase ="nestoque";
             //String username = "admin5gX7tuR";     
            //String password = "VZyjfPPfsmKq";             
            String serverName = "localhost";
            String mydatabase ="estoquedb";
             String username = "root";     
            String password = "";            
            String url = "jdbc:mysql://" + serverName + "/" + mydatabase;            
           connection = DriverManager.getConnection(url, username, password);            
            if (connection != null) {
                status = ("Conectado com sucesso!");
            } 
            else {
                status = ("Não foi possivel realizar conexão");
            } 
            return connection; 
        } 
        catch (ClassNotFoundException e) {    
            System.out.println("O driver expecificado nao foi encontrado."); 
            return null; 
        } 
        catch (SQLException e) { //Não conseguindo se conectar ao banco 
            System.out.println("Nao foi possivel conectar ao Banco de Dados."); 
            return null; 
        } 
    } 
    
    public static String statusConection() { 
        return status; 
    } 
    
    public static boolean FecharConexao() {
        try {             
        ConexaoDB.getConexaoMySQL().close(); 
        status = ("Conexão finalizada pelo usuário");
        return true;         
        } catch (SQLException e) { 
            return false; 
        } 
    } 
    
    public static java.sql.Connection ReiniciarConexao() { 
        FecharConexao(); 
        return ConexaoDB.getConexaoMySQL(); 
    } 
    
    
    
    public void CriaDB() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexao = DriverManager.getConnection(
          "jdbc:mysql://localhost/");
        System.out.println("Conectado!");
        conexao.close();
        
        String sql = "CREATE DATABASE IF NOT EXISTS estoquedb;\n" +
"     use estoquedb;\n" +
"     CREATE TABLE IF NOT EXISTS estoque(\n" +
"     `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key.',\n" +
"     `fabricante` varchar(100) NOT NULL DEFAULT '' COMMENT 'Nome do fabricante.',\n" +
"     `tipo_uni` varchar(50) NOT NULL DEFAULT 'pç' COMMENT 'tipo de unidade.',\n" +
"     `preco_compra` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço da compra.',\n" +
"     `preco` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço final do produto.',\n" +
"     `quantidade` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'quantidade em estoque.',\n" +
"     `descricao` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'descricao do produto.',\n" +
"     `tipo` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'tipo do produto (exe:vesturario, equipamento,diversos).',\n" +
"     PRIMARY KEY(id)\n" +
"     )";
        
      
      //PreparedStatement stmt = conexao.prepareStatement(sql);
      //stmt.execute();
      //stmt.close();
        //System.out.println("Banco de dados criado com sucesso!");
        
    }
}


