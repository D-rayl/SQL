/*
 * Daryl Crosbie
 * ID: P453055
 */
package mysqltest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySqlTest {

    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/coffeeshop"; // 3306 is default port
        String user = "root";
        String password = ""; // you set password when MySQL is installed
        Connection con = null; // JDBC connection
        Statement stmt = null; // SQL statement object
        String query; // SQL query string
        ResultSet result = null; // results after SQL execution
        try {
            con = DriverManager.getConnection(url, user, password); // connect to MySQL
            stmt = con.createStatement();
            query ="Select * From tblCoffees";
            query(query,result,stmt);
            
            System.out.println("\n****SELECTING AN ITEM****");
            query = "SELECT * FROM tblCoffees WHERE CoffeeName = 'Colombian';";
            query(query,result,stmt);
            
            System.out.println("\n****UPDATING THIS ENTRY****");
            query = "UPDATE tblCoffees SET Price=8.50, Sales=7 "
                    + "WHERE CoffeeName='Colombian'";
            update(query,stmt);
            
            query = "SELECT * FROM tblCoffees WHERE CoffeeName = 'Colombian';";
            query(query,result,stmt);
            
            System.out.println("\n****INSERTING AN ITEM****");
            query = "INSERT INTO tblCoffees"
                    + "(CoffeeName, SupplierID, Price, Sales, Total)"
                    + "VALUES"
                    + "('Ice drip',34,4.97,2,4)";
            update(query,stmt);
            
            query = "SELECT * FROM tblCoffees WHERE CoffeeName = 'Ice drip';";
            query(query,result,stmt);
            
            System.out.println();
            query ="Select * From tblCoffees";
            query(query,result,stmt);
            
            System.out.println("\n****DELETED THIS ITEM****");
            query = "DELETE FROM tblCoffees WHERE CoffeeName='Ice drip'";
            update(query,stmt);
            
            query ="Select * From tblCoffees";
            query(query,result,stmt);
            
        } catch (SQLException ex) {
            System.out.println("SQLException caught: " + ex.getMessage());
        } 
        finally {
    // Close all database objects nicely
        try {
            if (result != null) {
                result.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (con != null) {
                con.close();
            }
        }catch (SQLException ex) {
                System.out.println("SQLException caught: " + ex.getMessage()); 
            }
        }
    }
    public static void query(String query, ResultSet result, Statement stmt){
        try{
            result = stmt.executeQuery(query); // execute the SQL query
            System.out.printf("%-10s%-35s%-12s %-9s%-7s%-7s\n",
            "CoffeeID", "CoffeeName", "SupplierID", "Price", "Sales", "Total");
            showData(result);
        }catch(SQLException ex){
            System.out.println("SQLException caught: " + ex.getMessage());
        }
    }
    
    public static void update(String query, Statement stmt){
        try{ 
            stmt.executeUpdate(query);
        }catch(SQLException ex){
            System.out.println("SQLException caught: " + ex.getMessage()); 
        }
    }
    
    public static void showData(ResultSet result){
        try{
            while (result.next()) { // loop until the end of the results
                   int coffeeID = result.getInt("CoffeeID");
                   String coffeeName = result.getString("CoffeeName");
                   int supplierID = result.getInt("SupplierID");
                    double price = result.getDouble("Price");
                    int sales = result.getInt("Sales");
                    int total = result.getInt("Total");
                    System.out.printf("%8d %-35s%10d %7.2f %7d%7d\n",
                    coffeeID, coffeeName, supplierID, price, sales, total);
            }
        }catch(SQLException ex){
            System.out.println("SQLException caught: " + ex.getMessage());
        }
    }
}
    

