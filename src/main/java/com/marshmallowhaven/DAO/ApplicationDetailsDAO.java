package com.marshmallowhaven.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;


import com.marshmallowhaven.DatabaseConnection.DatabaseConnection;
import com.marshmallowhaven.Model.AdminQueries;
import com.marshmallowhaven.Model.ApplicationDetails;


public class ApplicationDetailsDAO {

    private Connection conn;

	public ApplicationDetailsDAO() throws ClassNotFoundException, SQLException {
		this.conn = DatabaseConnection.getConnection();
	}

	public ArrayList<ApplicationDetails> getTopThreeAllApplicationDetails() {
	    ArrayList<ApplicationDetails> applicationList = new ArrayList<>();



	    try {
	    	
	    	
	    	PreparedStatement ps = conn.prepareStatement(AdminQueries.GET_TOP_THREE_APPLICATIONS);
	         ResultSet rs = ps.executeQuery();

	    	while (rs.next()) {
	    	    ApplicationDetails app = new ApplicationDetails(
	    	        rs.getInt("application_user_id"),
	    	        rs.getString("full_name"),
	    	        rs.getInt("user_id"),
	    	        rs.getString("email"),
	    	        rs.getString("gender"),
	    	        rs.getDate("date_of_birth"),
	    	        rs.getString("contact_number"),
	    	        rs.getString("address"),
	    	        rs.getString("room_number"),
	    	        rs.getString("room_type"),
	    	        rs.getInt("current_occupancy"),
	    	        rs.getInt("application_id"),
	    	        rs.getString("duration_of_stay"),
	    	        rs.getDate("expected_check_in"),
	    	        rs.getDate("check_out_date"),
	    	        rs.getString("special_requests"),
	    	        rs.getString("status"),
	    	        rs.getString("photo_url"),
	    	        rs.getTimestamp("application_created_at")
	    	    );

	    	    applicationList.add(app);
	    	}


	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return applicationList;
	}

	public ArrayList<ApplicationDetails> getAllApplicationDetails() {
	    ArrayList<ApplicationDetails> applicationList = new ArrayList<>();



	    try {
	    	
	    	
	    	PreparedStatement ps = conn.prepareStatement(AdminQueries.GET_APPLICATIONS);
	         ResultSet rs = ps.executeQuery();

	    	while (rs.next()) {
	    	    ApplicationDetails app = new ApplicationDetails(
	    	        rs.getInt("application_user_id"),
	    	        rs.getString("full_name"),
	    	        rs.getInt("user_id"),
	    	        rs.getString("email"),
	    	        rs.getString("gender"),
	    	        rs.getDate("date_of_birth"),
	    	        rs.getString("contact_number"),
	    	        rs.getString("address"),
	    	        rs.getString("room_number"),
	    	        rs.getString("room_type"),
	    	        rs.getInt("current_occupancy"),
	    	        rs.getInt("application_id"),
	    	        rs.getString("duration_of_stay"),
	    	        rs.getDate("expected_check_in"),
	    	        rs.getDate("check_out_date"),
	    	        rs.getString("special_requests"),
	    	        rs.getString("status"),
	    	        rs.getString("photo_url"),
	    	        rs.getTimestamp("application_created_at")
	    	    );

	    	    applicationList.add(app);
	    	}


	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return applicationList;
	}
	
	public ArrayList<ApplicationDetails> getAllApplicationDetailsByI(int application_user_id ) {
	    ArrayList<ApplicationDetails> applicationList = new ArrayList<>();



	    try {
	    	
	    	
	    	PreparedStatement ps = conn.prepareStatement(AdminQueries.GET_APPLICATIONS_BY_ID);
	    	ps.setInt(1, application_user_id); 
	         ResultSet rs = ps.executeQuery();

	    	while (rs.next()) {
	    	    ApplicationDetails app = new ApplicationDetails(
	    	        rs.getInt("application_user_id"),
	    	        rs.getString("full_name"),
	    	        rs.getInt("user_id"),
	    	        rs.getString("email"),
	    	        rs.getString("gender"),
	    	        rs.getDate("date_of_birth"),
	    	        rs.getString("contact_number"),
	    	        rs.getString("address"),
	    	        rs.getString("room_number"),
	    	        rs.getString("room_type"),
	    	        rs.getInt("current_occupancy"),
	    	        rs.getInt("application_id"),
	    	        rs.getString("duration_of_stay"),
	    	        rs.getDate("expected_check_in"),
	    	        rs.getDate("check_out_date"),
	    	        rs.getString("special_requests"),
	    	        rs.getString("status"),
	    	        rs.getString("photo_url"),
	    	        rs.getTimestamp("application_created_at")
	    	    );

	    	    applicationList.add(app);
	    	}


	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return applicationList;
	}
	
	public ArrayList<ApplicationDetails> getAllApplicationDetailsByStatus(String status ) {
	    ArrayList<ApplicationDetails> applicationList = new ArrayList<>();



	    try {
	    	
	    	
	    	PreparedStatement ps = conn.prepareStatement(AdminQueries.GET_APPLICATIONS_BY_STATUS);
	    	ps.setString(1, status); 
	         ResultSet rs = ps.executeQuery();

	    	while (rs.next()) {
	    	    ApplicationDetails app = new ApplicationDetails(
	    	        rs.getInt("application_user_id"),
	    	        rs.getString("full_name"),
	    	        rs.getInt("user_id"),
	    	        rs.getString("email"),
	    	        rs.getString("gender"),
	    	        rs.getDate("date_of_birth"),
	    	        rs.getString("contact_number"),
	    	        rs.getString("address"),
	    	        rs.getString("room_number"),
	    	        rs.getString("room_type"),
	    	        rs.getInt("current_occupancy"),
	    	        rs.getInt("application_id"),
	    	        rs.getString("duration_of_stay"),
	    	        rs.getDate("expected_check_in"),
	    	        rs.getDate("check_out_date"),
	    	        rs.getString("special_requests"),
	    	        rs.getString("status"),
	    	        rs.getString("photo_url"),
	    	        rs.getTimestamp("application_created_at")
	    	    );

	    	    applicationList.add(app);
	    	}


	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return applicationList;
	}

}