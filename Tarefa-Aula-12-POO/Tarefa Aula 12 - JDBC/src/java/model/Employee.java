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
public class Employee {
    int id;
    String firstName, lastName;
    
    // Preenche a lista de funcionários
    public static ArrayList<Employee> getList() throws Exception{
        ArrayList<Employee> list = new ArrayList<Employee>();
        Class.forName("org.sqlite.JDBC");
        // Objeto de conexão com o banco de dados
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\Vinícius\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from employees order by FirstName");
        while (rs.next()){            
            list.add(new Employee(rs.getInt("EmployeeId"), rs.getString("FirstName"), rs.getString("LastName")));
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
        ResultSet rs = stmt.executeQuery("select count (*) as count from employees");
        while (rs.next()){            
            count = rs.getInt("count");
        }
        
        rs.close();
        stmt.close();
        con.close();
        return count;
    }

    public Employee(int id, String firstName, String lastName) {
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
