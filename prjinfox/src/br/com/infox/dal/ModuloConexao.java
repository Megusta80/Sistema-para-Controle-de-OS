/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class ModuloConexao {
    //método responsável por estabelecer a conexão com o banco

    public static Connection conector() {
        Connection conexao = null;
        // a linha abaixo "chama" o driver
        String driver = "com.mysql.cj.jdbc.Driver";
        // Armazenando informações referente ao banco
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "506441@mm#";
        // Estabelecendo a conexão com o Banco
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            //e.printStackTrace(); // para ver detalhes do erro
            
            return null;
        }
    }
}