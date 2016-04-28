package Model;

import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * @author Jamie
 */
public class Customer {

    ArrayList<String> CustomerID;
    ArrayList<String> Name;
    ArrayList<String> Address;
    int CustomerSize;

    public Customer() throws SQLException {
        Name = Database.runQuery("SELECT * FROM customer", "name");

        CustomerID = Database.runQuery("SELECT * FROM customer", "id");

        Address = Database.runQuery("SELECT * FROM customer", "address");
        CustomerSize = CustomerID.size();
    }

    //get customer ID
    public String getID(int index) throws SQLException {

        CustomerID = Database.runQuery("SELECT * FROM customer", "id");
        String individual_id = CustomerID.get(index);

        return individual_id;
    }

    //get customer name
    public String getName(int index) throws SQLException {

        Name = Database.runQuery("SELECT * FROM customer", "name");

        String individual_name = Name.get(index);

        return individual_name;
    }

    //get customer address
    public String getAddress(int index) throws SQLException {
        Address = Database.runQuery("SELECT * FROM customer", "address");
        String address_name = Address.get(index);
        return address_name;
    }

    //add customer
    public void addCustomer(String customer, String address) throws SQLException {
        if (Name.contains(customer)) {
        } else {
            Database.runUpdate("INSERT INTO customer (name, address) VALUES('" + customer + "', '" + address + "')");
        }
    }

    //get customer table size
    public int getCustomerSize() throws SQLException {
        CustomerID = Database.runQuery("SELECT * FROM customer", "id");
        return this.CustomerID.size();
    }
}
