/*
 * Daryl Crosbie
 * ID: P453055
 */
package idnamedatabase;

import java.awt.Font;
import java.awt.event.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.*;
/**
 *
 * @author Daryl
 */
public final class IDNameDatabase extends JFrame implements ActionListener {
    
    static JButton b = new JButton("Search");
    JLabel l = new JLabel("Search the database by ID");
    JLabel l2 = new JLabel("Enter ID: ");
    JLabel l3 = new JLabel("Name: ");
    static JTextField t = new JTextField();
    static JTextField t2 = new JTextField();
    JPanel p;
    /**
     * Constructs panel with labels, text boxes and a button
     */
    public IDNameDatabase(){
        super("Database");
        p = new JPanel();
        p.setLayout(null);
        setPane();
        
        //Labels
        p.add(l);
        l.setBounds(30,30,2000,30);
        l.setFont(new Font("Serif",Font.PLAIN,18));
        p.add(l2);
        l2.setBounds(32,80,70,30);
        p.add(l3);
        l3.setBounds(40,140,70,30);
        
        //Text boxes
        p.add(t);
        t.setBounds(100,80,30,30);
        p.add(t2);
        t2.setBounds(100,140,80,30);
        
        //Button
        p.add(b);
        b.setBounds(30,200,200,30);
        b.addActionListener(this);   
    }
    //Sets the panel properties
    public void setPane(){
        setContentPane(p);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(300,300);
        setVisible(true);
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        IDNameDatabase D = new IDNameDatabase(); 
    }
    /**
     * Method, searches the database with query modified by id number
     * If id found in data base, name is returned and displayed in another
     * text box
     * @param id 
     */
    public void searchDataBase(int id){
        t2.setText("");
        String url = "jdbc:mysql://localhost:3306/student"; // 3306 is default port
        String user = "root";
        String password = ""; // you set password when MySQL is installed
        Connection con; // JDBC connection
        PreparedStatement ps; // SQL statement object
        String query = "SELECT name FROM students WHERE id = ?";
        ResultSet result; // results after SQL execution
        
        try {
            con = DriverManager.getConnection(url, user, password); // connect to MySQL
            ps = con.prepareStatement(query);
            ps.setInt(1,id);
            result = ps.executeQuery();
            while(result.next()){
                t2.setText(result.getString(1));
            }
        }catch(SQLException e){
            System.out.println("Uh O");
        }
    }
    
    /**
     * Detects search button pressed and tries to pass id input 
     * to the search database method
     * @param e 
     */
    @Override
    public void actionPerformed(ActionEvent e) {
       int id = tryParse(t.getText());
       if(id > 0)
       {
           searchDataBase(id);
       } 
    }
    
    public int tryParse(String s){
        int v;
        try{
            v = Integer.parseInt(s);
        }catch(NumberFormatException e){
            t2.setText("Invalid ID");
            v = -1;
        }
        return v;
    }
}
