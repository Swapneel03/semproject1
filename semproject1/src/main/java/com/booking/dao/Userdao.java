package com.booking.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.booking.model.User;



public class Userdao {
	public static Connection getConnection() throws ClassNotFoundException,SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/train","root","swapneel03");
	}
	
	public boolean insertuser(User user) {
	    boolean flag = false;
	    Connection con = null;
	    PreparedStatement st = null;

	    try {
	    
	        con = Userdao.getConnection();
	        
	  
	        st = con.prepareStatement("INSERT INTO usertable (user_name, password, Email, phone_number) VALUES (?, ?, ?, ?);");
	        st.setString(1, user.getUser_name());
	        st.setString(2, user.getPassword());
	        st.setString(3, user.getEmail());
	        st.setString(4, user.getPhone_number());

	       
	        if (st.executeUpdate() == 1) {
	            flag = true; 
	        }

	    } catch (SQLException | ClassNotFoundException e) {
	        e.printStackTrace(); 
	    } finally {
	       
	        try {
	           
	                con.close(); 
	            }catch (SQLException e) {
	            e.printStackTrace(); 
	        }
	    
	    }
	    return flag;
	}
	 public boolean updateUser(User user) {
	        boolean flag = false;
	        Connection con = null;
	        PreparedStatement st = null;

	        try {
	            con = Userdao.getConnection();
	            st = con.prepareStatement("UPDATE usertable SET user_name = ?, password = ?, Email = ?, phone_number = ? WHERE user_id = ?;");
	            st.setString(1, user.getUser_name());
	            st.setString(2, user.getPassword());
	            st.setString(3, user.getEmail());
	            st.setString(4, user.getPhone_number());
	            st.setInt(5, user.getUser_id());

	      
	            if (st.executeUpdate() == 1) {
	                flag = true; 
	            }

	        } catch (SQLException | ClassNotFoundException e) {
	            e.printStackTrace(); 
	        } finally {
	           
	            try {
	              
	                    st.close(); 
	            
	                if (con != null) {
	                    con.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace(); 
	            }
	        }
	        return flag;
	    }
	}




