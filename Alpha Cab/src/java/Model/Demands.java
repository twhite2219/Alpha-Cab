package Model;

/**
 *
 * @author Jamie
 */
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jamie
 */
public class Demands {

    ArrayList<String> DemandID;
    ArrayList<String> Name;
    ArrayList<String> Address;
    ArrayList<String> Destination;
    ArrayList<String> Date;
    ArrayList<String> Time;
    ArrayList<String> Status;

    public Demands() throws SQLException {
        DemandID = Database.runQuery("SELECT * FROM demands", "id");

        Name = Database.runQuery("SELECT * FROM demands", "name");

        Address = Database.runQuery("SELECT * FROM demands", "address");

        Destination = Database.runQuery("SELECT * FROM demands", "destination");

        Date = Database.runQuery("SELECT * FROM demands", "date");

        Time = Database.runQuery("SELECT * FROM demands", "time");

        Status = Database.runQuery("SELECT * FROM demands", "status");
    }

    //get customer name
    public ArrayList<String> getName() {
        return Name;
    }

    //add demand
    public void addDemand(String name, String address, String destination, String date, String time,
            String status) throws SQLException { //Adds demand to DB
        Database.runUpdate("INSERT INTO demands (name, address, destination, date, time, status) "
                + "VALUES('" + name + "', '" + address + "', '" + destination + "', '" + date + "', '" + time + "', '" + status + "')");
    }

    //get demand size 
    public int getDemandLineSize() throws SQLException {
        DemandID = Database.runQuery("SELECT * FROM demand", "id");
        return this.DemandID.size();
    }

    //get demand id
    public String getDemandID(int index) throws SQLException {

        DemandID = Database.runQuery("SELECT * FROM demand", "id");
        String individual_id = DemandID.get(index);

        return individual_id;
    }

    //get name
    public String getName(int index) throws SQLException {

        Name = Database.runQuery("SELECT * FROM demand", "name");

        String individual_name = Name.get(index);

        return individual_name;

    }
    //get address
    public String getAddress(int index) throws SQLException {

        Address = Database.runQuery("SELECT * FROM demand", "address");

        String individual_price = Address.get(index);

        return individual_price;

    }
}
