package Misc;

import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author Lucas
 */
public class UsersCrud {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<User> lista = new ArrayList <>();
    
    public UsersCrud (){
        conn = new ConnectBD().getConexao();
    }
    
    public void insert (User user){
        String sql = "INSERT INTO user (Nome,Email) VALUES (?,?)";
        
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getNome());
            stmt.setString(2, user.getEmail());
            stmt.execute();
            stmt.close();
        }catch(SQLException erro) {
             throw new RuntimeException("Erro 246: "+erro);
        }
    }
    
        public void edit (User user){
        String sql = "UPDATE user SET Nome = ?, Email = ? WHERE Id = ?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getNome());
            stmt.setString(2, user.getEmail());
            stmt.setInt(3, user.getId());
            stmt.execute();
            stmt.close();
        }catch(SQLException erro) {
             throw new RuntimeException("Erro 247: "+erro);
        }
    }
        
        public void delete (int id){
        String sql = "DELETE  FROM user WHERE Id = "+id;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();        
        }catch(Exception erro) {
             throw new RuntimeException("Erro 248: "+erro);
        }
    }
            
    public ArrayList<User> listAll(){
        String sql ="SELECT * FROM user";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setNome(rs.getString("nome"));
                user.setEmail(rs.getString("email"));
                lista.add(user);
            }
        }catch(Exception erro) {
             throw new RuntimeException("Erro 248: "+erro);
        }
        return lista;
    }
    
        public ArrayList<User> listAllName(String valor){
        String sql ="SELECT * FROM user WHERE nome LIKE '%"+valor+"%' ";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setNome(rs.getString("nome"));
                user.setEmail(rs.getString("email"));
                lista.add(user);
            }
        }catch(Exception erro) {
             throw new RuntimeException("Erro 249: "+erro);
        }
        return lista;
    } 
}
