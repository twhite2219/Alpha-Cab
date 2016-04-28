package Model;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jamie
 */
public class Login {
   
    ArrayList<String> Username;
    ArrayList<String> Password;

    public Login() throws SQLException { 
        Username = Database.runQuery("SELECT * FROM drivers", "registration");
        
        Password = Database.runQuery("SELECT * FROM drivers", "password");
  
    }
//get username
    public ArrayList<String> getUsername() {
        return Username;
    }
    //get password
    public ArrayList<String> getPassword() {
        return Password;
    }
    
}
