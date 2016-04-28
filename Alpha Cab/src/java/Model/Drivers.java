package Model;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jamie
 */
public class Drivers {

    ArrayList<String> Registration;
    ArrayList<String> Name;
    ArrayList<String> Password;

    public Drivers() throws SQLException { 
        Registration = Database.runQuery("SELECT * FROM drivers", "registration");
        
        Name = Database.runQuery("SELECT * FROM drivers", "name");
        
        Password = Database.runQuery("SELECT * FROM drivers", "password");
    }
    //get Name
    public String getName(int index) throws SQLException {
       Name = Database.runQuery("SELECT * FROM drivers", "name");
       String name_id = Name.get(index);

       return name_id;
    }
    //get Registration
     public String getRegistration(int index) throws SQLException {
        Registration = Database.runQuery("SELECT * FROM drivers", "registration");
        String registration_no = Registration.get(index);

        return registration_no;
    }
     //get Password
    public String getPassword(int index) throws SQLException {
        Password = Database.runQuery("SELECT * FROM drivers", "password");
        String password_id = Password.get(index);

        return password_id;
    }
    //get driver table size
     public int getDriverSize() throws SQLException {
        Name = Database.runQuery("SELECT * FROM drivers", "name");
        return this.Name.size();
    }
     //add driver
     public void addDriver(String name, String registration, String password) throws SQLException{
       Database.runUpdate("INSERT INTO drivers (name , registration, password) "
               + "VALUES('"+name+"', '"+registration+"', '"+password+"')");
    }
     //delete driver
     public void deleteDriver(String name) throws SQLException {
         Database.runUpdate("DELETE FROM drivers WHERE name = '"+name+"'");
     }
}