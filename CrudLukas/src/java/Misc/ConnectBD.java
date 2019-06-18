package Misc;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Lucas
 */
public class ConnectBD {
    public Connection getConexao () {
        try{
            Class.forName ("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/crud","root","");
        }catch(Exception erro){
            throw new RuntimeException("Erro 245: "+erro);
        }
    }
}
