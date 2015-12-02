package dao;

import db.ConexaoDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Estoque;

public class EstoqueDAO {

    private final ConexaoDB conexao;
    private String sql;
    PreparedStatement stmt;
    private String Message;
    public EstoqueDAO() {
        conexao = new ConexaoDB();
    }

    public String Inserir(Estoque estoque) {
        sql = "INSERT INTO `estoque` (fabricante,tipo_uni,preco_compra,preco,quantidade,descricao,tipo,nome)"
                + "VALUES(?,?,?,?,?,?,?,?)";        
        try {
            stmt = this.conexao.getConexaoMySQL().prepareStatement(sql);
            stmt.setString(1, estoque.getFabricante());
            stmt.setString(2, estoque.getTipo_uni());
            stmt.setDouble(3, estoque.getPreco_compra());
            stmt.setDouble(4, estoque.getPreco());
            stmt.setInt(5, estoque.getQuantidade());
            stmt.setString(6, estoque.getDescricao());
            stmt.setString(7, estoque.getTipo());
            stmt.setString(8, estoque.getNome());
            stmt.execute();
            stmt.close();
            Message = "Registro inserido com sucesso!";  
            return Message;
        } catch (SQLException ex) {
            Logger.getLogger(EstoqueDAO.class.getName()).log(Level.SEVERE, null, ex);
            Message = "Erro: "+ex;  
            return Message;
        }
    }
    
    public String Editar(Estoque estoque) {
        sql = "UPDATE `estoque` SET fabricante = ? ,tipo_uni = ? , preco_compra = ? , preco = ?, quantidade = ?,"
                + "descricao = ?, tipo = ?, nome = ?"
                + " WHERE id = ?";        
        try {
            stmt = this.conexao.getConexaoMySQL().prepareStatement(sql);
            stmt.setString(1, estoque.getFabricante());
            stmt.setString(2, estoque.getTipo_uni());
            stmt.setDouble(3, estoque.getPreco_compra());
            stmt.setDouble(4, estoque.getPreco());
            stmt.setInt(5, estoque.getQuantidade());
            stmt.setString(6, estoque.getDescricao());
            stmt.setString(7, estoque.getTipo());
            stmt.setString(8, estoque.getNome());
            stmt.setInt(9, estoque.getId());
            stmt.execute();
            stmt.close();
            Message = "Registro atualizado com sucesso!";  
            return Message;
        } catch (SQLException ex) {
            Logger.getLogger(EstoqueDAO.class.getName()).log(Level.SEVERE, null, ex);
            Message = "Erro: "+ex;  
            return Message;
        }
    }
     public String Excluir(String param, String operador, String valor) {
        sql = "DELETE FROM `estoque` WHERE " +param + operador + valor
                + "";        
        try {
            stmt = this.conexao.getConexaoMySQL().prepareStatement(sql);            
            stmt.execute();
            stmt.close();
            Message = "Registro(s) excluido(s) com sucesso!";  
            return Message;
        } catch (SQLException ex) {
            Logger.getLogger(EstoqueDAO.class.getName()).log(Level.SEVERE, null, ex);
            Message = "Erro: "+ex;  
            return Message;
        }
    }
    
     public List<Estoque> Pesquisa(String param, String operador, String valor) {
        sql = "SELECT * FROM  `estoque` WHERE " +param + operador + valor                
                + "";        
        List mylist = new ArrayList();
        try {
            stmt = this.conexao.getConexaoMySQL().prepareStatement(sql);            
            ResultSet rs = stmt.executeQuery();            
            stmt.execute();
            while(rs.next()){
                Estoque estoque = new Estoque();
                estoque.setId(rs.getInt("id"));
                estoque.setFabricante(rs.getString("fabricante"));
                estoque.setTipo_uni(rs.getString("tipo_uni"));
                estoque.setPreco_compra(rs.getDouble("preco_compra"));
                estoque.setPreco(rs.getDouble("preco"));
                estoque.setQuantidade(rs.getInt("quantidade"));
                estoque.setDescricao(rs.getString("descricao"));
                estoque.setTipo(rs.getString("tipo"));
                estoque.setNome(rs.getString("nome"));
                mylist.add(estoque);                
                
            }            
            stmt.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EstoqueDAO.class.getName()).log(Level.SEVERE, null, ex);
            Message = "Erro: "+ex;             
            
        }
        return mylist;
    }
    

    public String Criar() {
        String Message ="";        
        sql = ""
                +"CREATE TABLE IF NOT EXISTS estoque (\n"
                + "`id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key.',\n"
                + "                `fabricante` varchar(100) NOT NULL DEFAULT 'N/A ' COMMENT 'Nome do fabricante.',\n"
                + "                `tipo_uni` varchar(50) DEFAULT 'pç' COMMENT 'tipo de unidade.',\n"
                + "                `preco_compra` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço da compra.',\n"
                + "                `preco` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço final do produto.',\n"
                + "                `quantidade` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'quantidade em estoque.',\n"
                + "                `descricao` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'descricao do produto.',\n"
                + "                `tipo` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'tipo do produto (exe:vesturario, equipamento,diversos).',\n"
                + "                `nome` varchar(50) NOT NULL DEFAULT '' COMMENT 'tipo do produto (nome do produto).',\n"
                + "PRIMARY KEY(id)"
                + ")ENGINE=InnoDB AUTO_INCREMENT=1 CHARSET=utf8 COMMENT='Tabela Estoque';";
        try {
            stmt = this.conexao.getConexaoMySQL().prepareStatement(sql);
            stmt.execute();
            stmt.close();
            Message = "Tabela criada com sucesso";            
            return Message;
        } catch (SQLException ex) {
            Logger.getLogger(EstoqueDAO.class.getName()).log(Level.SEVERE, null, ex);            
            Message = "Erro ao criar tabela: "+ex;
            return Message;            
        }            
        
        
    }
    /*CREATE DATABASE IF NOT EXISTS estoquedb;
     use estoquedb;
     CREATE TABLE IF NOT EXISTS estoque(
     `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key.',
     `fabricante` varchar(100) NOT NULL DEFAULT '' COMMENT 'Nome do fabricante.',
     `tipo_uni` varchar(50) NOT NULL DEFAULT 'pç' COMMENT 'tipo de unidade.',
     `preco_compra` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço da compra.',
     `preco` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço final do produto.',
     `quantidade` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'quantidade em estoque.',
     `descricao` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'descricao do produto.',
     `tipo` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'tipo do produto (exe:vesturario, equipamento,diversos).',
     PRIMARY KEY(id)
     )*/

}

