package com.domain.quiz;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.rmi.runtime.Log;

public class DataBase {
    
    String login = "root";
    String senha = "root";
    public Connection con;
    
    public DataBase() {
        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            String url = "jdbc:derby://localhost:1527/db_quiz";
            con = DriverManager.getConnection(url, login, senha);
            
        } catch (ClassNotFoundException ex) {
            out.print(ex.getMessage());
        } catch (SQLException ex) {
            out.print(ex.getMessage());
        }
    }
    
    public boolean Logar(String login, String senha) {
        String sql = "SELECT cd_usuario,nm_usuario,cd_senha,ic_tipo FROM tb_usuario WHERE nm_usuario = '" + login + "' AND cd_senha = '" + senha + "'";
        try {
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            result = statement.executeQuery(sql);
            
            while (result.next()) {
                if (result.getString("cd_senha").equals(senha)) {
                    String tipo = result.getString("ic_tipo");
                    GLOBAL.IDUSUARIO = result.getString("cd_usuario");
                    GLOBAL.NOMEUSUARIO = result.getString("nm_usuario");
                    if (tipo.equals("Administrador")) {
                        GLOBAL.TIPOUSUARIO = 1;
                        GLOBAL.LOGADO = 1;
                        return true;
                    } else {
                        GLOBAL.TIPOUSUARIO = 0;
                        GLOBAL.LOGADO = 1;
                        return true;
                    }
                    
                } else {
                    return false;
                }
            }
            return false;
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            GLOBAL.LOGADO = 0;
            return false;
        }
        
    }
    
    public boolean Testar(String login) {
        String sql = "SELECT nm_usuario FROM tb_usuario WHERE nm_usuario = '" + login + "'";
        try {
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            
            if (result.next()) {
                return true;
                
            } else {
                return false;
                
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return false;
        }
    }
    
    public boolean Cadastro(String nome, String senha, String tipo) {
        String sql = "INSERT INTO tb_usuario(nm_usuario, cd_senha, ic_tipo) VALUES (?, ?, ?)";
        PreparedStatement statement;
        try {
            statement = con.prepareStatement(sql);
            statement.setString(1, nome);
            statement.setString(2, senha);
            statement.setString(3, tipo);
            
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return false;
        }
        
    }
    
    public boolean InserirHistorico(String nome, String pontos, String codigo, String data) {
        String sql = "INSERT INTO tb_historico(nm_usuario, ds_pontuacao, cd_usuario,ds_data) VALUES (?, ?, ?, ?)";
        PreparedStatement statement;
        try {
            statement = con.prepareStatement(sql);
            statement.setString(1, nome);
            statement.setString(2, pontos);
            statement.setString(3, codigo);
            statement.setString(4, data);
            
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return false;
        }
        
    }
    
    public ArrayList CarregarHistoricoUsuario() {
        String sql = "SELECT ds_pontuacao,ds_data FROM tb_historico WHERE cd_usuario = '"+ GLOBAL.IDUSUARIO + "'";
        ArrayList<Jogador> j = new ArrayList<Jogador>();
        try {
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            if (true) {
                while (result.next()) {
                    j.add(new Jogador(result.getString("ds_pontuacao"), result.getString("ds_data")));
                }
                return j;
            } else {
                return j;
                
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return j;
        }
    }
    
    public ArrayList CarregarUsuario() {
        String sql = "SELECT cd_usuario,nm_usuario FROM tb_usuario";
        ArrayList<Jogador> j = new ArrayList<Jogador>();
        try {
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            if (true) {
                while (result.next()) {
                    j.add(new Jogador(result.getString("cd_usuario"), result.getString("nm_usuario")));
                }
                return j;
            } else {
                return j;
                
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return j;
        }
    }
    
    public ArrayList CarregarPerguntas() {
        String sql = "SELECT alternativa,resporta,alt1,alt2,alt3 FROM tb_teste";
        ArrayList<Question> q = new ArrayList<Question>();
        try {
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            if (true) {
                while (result.next()) {
                    q.add(new Question(result.getString("alternativa"), result.getString("resporta"), new String[]{result.getString("alt1"), result.getString("alt2"), result.getString("alt3")}));
                }
                return q;
            } else {
                return q;
                
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return q;
        }
    }
    
    public boolean DeleteUsuario(String codigo) {
        try {
            String sql = "DELETE FROM tb_usuario WHERE cd_usuario = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, codigo);
            
            int rowsDeleted = statement.executeUpdate();
            if (rowsDeleted > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean DeleteQuestao(String alternativa) {
        try {
            String sql = "DELETE FROM tb_teste WHERE alternativa = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, alternativa);
            
            int rowsDeleted = statement.executeUpdate();
            if (rowsDeleted > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public ArrayList CarregarPergunta() {
        String sql = "SELECT alternativa FROM tb_teste";
        ArrayList<Jogador> j = new ArrayList<Jogador>();
        try {
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            if (true) {
                while (result.next()) {
                    j.add(new Jogador(result.getString("alternativa"), ""));
                }
                return j;
            } else {
                return j;
                
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return j;
        }
    }
    
    public boolean InserirPegunta(String alternativa, String resposta, String alt1, String alt2, String alt3) {
        String sql = "INSERT INTO tb_teste(alternativa, resporta, alt1, alt2, alt3) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement statement;
        try {
            statement = con.prepareStatement(sql);
            statement.setString(1, alternativa);
            statement.setString(2, resposta);
            statement.setString(3, alt1);
            statement.setString(4, alt2);
            statement.setString(5, alt3);
            
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
            return false;
        }
    }
    
}
