/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author Fatec
 */
public class Customer {
    int id;
    String firstName, lastName;
    
    // Preenche a lista de funcionários
    public static ArrayList<Customer> getList() throws Exception{
        ArrayList<Customer> list = new ArrayList<Customer>();
        Class.forName("org.sqlite.JDBC");
        // Objeto de conexão com o banco de dados
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\Vinícius\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from customers order by FirstName");
        while (rs.next()){            
            list.add(new Customer(rs.getInt("CustomerId"), rs.getString("FirstName"), rs.getString("LastName")));
        }
        
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
        
     public static int getCount() throws Exception{
        int count = 0;
        Class.forName("org.sqlite.JDBC");
        // Objeto de conexão com o banco de dados
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\Vinícius\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select count (*) as count from Customers");
        while (rs.next()){            
            count = rs.getInt("count");
        }
        
        rs.close();
        stmt.close();
        con.close();
        return count;
    }

    public Customer(int id, String firstName, String lastName) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getFullName(){
        return firstName + " " + lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    
}
