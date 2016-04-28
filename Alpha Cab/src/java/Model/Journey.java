package Model;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jamie
 */
public class Journey {

    ArrayList<String> JourneyID;
    ArrayList<String> Destination;
    ArrayList<String> Distance;
    ArrayList<String> CustomerID;
    ArrayList<String> DriverReg;
    ArrayList<String> Date;
    ArrayList<String> Time;
    ArrayList<String> Customer;
    ArrayList<String> Address;

    public Journey() throws SQLException { 
        JourneyID = Database.runQuery("SELECT * FROM journey", "id");
        
        Destination = Database.runQuery("SELECT * FROM journey", "destination");
        
        Distance = Database.runQuery("SELECT * FROM journey", "distance");
        
        CustomerID = Database.runQuery("SELECT * FROM journey", "customer.id");
        
        DriverReg = Database.runQuery("SELECT * FROM journey", "drivers.registration");
        
        Date = Database.runQuery("SELECT * FROM journey", "date");
        
        Time = Database.runQuery("SELECT * FROM journey", "time");
        
        Customer = Database.runQuery("SELECT * FROM customer", "name");
        
        Address = Database.runQuery("SELECT * FROM customer", "address");
    }
    //get id
        public String getJourneyID(int index) throws SQLException {
        
        JourneyID = Database.runQuery("SELECT * FROM journey", "id");
        String individual_id = JourneyID.get(index);

        return individual_id;
    }
        //get destination
    public String getDestination(int index) throws SQLException {
        Destination = Database.runQuery("SELECT * FROM journey", "destination");

        String destination = Destination.get(index);

        return destination;
    }
    //get distance
        public String getDistance(int index) throws SQLException {

        Distance = Database.runQuery("SELECT * FROM journey", "distance");

        String distance = Distance.get(index);

        return distance;

    }
        //get customer id and return name
        public String getCustomerID(int index) throws SQLException {

        Destination = Database.runQuery("SELECT * FROM journey", "customer.id");
        

        String individual_id = Destination.get(index);
        
        Customer = Database.runQuery("SELECT * FROM customer WHERE customer.id = " 
                + individual_id, "name");
        
        String customer = Customer.get(0);

        return customer;
    }
        //get driver registration     
    public String getDriverReg(int index) throws SQLException {
        
        
        DriverReg = Database.runQuery("SELECT * FROM journey", "drivers.registration");

        String driver_reg = DriverReg.get(index);

        return driver_reg;

    }
    //get date
    public String getDate(int index) throws SQLException {

        Date = Database.runQuery("SELECT * FROM journey", "date");
        

        String date = Date.get(index);

        return date;

    }
         //get time
        public String getTime(int index) throws SQLException {

        Time = Database.runQuery("SELECT * FROM journey", "time");

        String time = Time.get(index);

        return time;

    }
         //get id     
    public String getID(int index) throws SQLException {

        CustomerID = Database.runQuery("SELECT * FROM journey", "customer.id");
        

        String address = CustomerID.get(index);
        
        Address = Database.runQuery("SELECT * FROM customer WHERE customer.id = " 
                + address, "address");
        
        String customeradd = Address.get(0);

        return customeradd;
    }   
    //add journey
     public void addJourney(String destination, int distance2, String customer_id, String drivers_reg, String date, String time) throws SQLException{       
         Database.runUpdate("INSERT INTO journey (destination , distance, `customer.id`, `drivers.registration`, date, time) "
               + "VALUES('"+destination+"', '"+distance2+"', '"+customer_id+"', '"+drivers_reg+"', '"+date+"', '"+time+"')");
    }
     //get journey size
     public int getJourneyLineSize() throws SQLException {
        JourneyID = Database.runQuery("SELECT * FROM journey", "id"); 
        return this.JourneyID.size();
    }
}