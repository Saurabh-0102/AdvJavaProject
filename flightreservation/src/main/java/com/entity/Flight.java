package com.entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.sql.*;

@Entity
@Table(name="tbl_flight")
public class Flight {

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
	 	private int flightNumber;
	    private String airlines;
	    private String departureCity;
	    private String arrivalCity;
	    private LocalDateTime date;
		

	    
		public int getFlightNumber() {
			return flightNumber;
		}
		public void setFlightNumber(int flightNumber) {
			this.flightNumber = flightNumber;
		}
		public String getAirlines() {
			return airlines;
		}
		public void setAirlines(String airlines) {
			this.airlines = airlines;
		}
		public String getDepartureCity() {
			return departureCity;
		}
		public void setDepartureCity(String departureCity) {
			this.departureCity = departureCity;
		}
		public String getArrivalCity() {
			return arrivalCity;
		}
		public void setArrivalCity(String arrivalCity) {
			this.arrivalCity = arrivalCity;
		}
		public LocalDateTime getDate() {
			return date;
		}
		public void setDate(LocalDateTime date) {
			this.date = date;
		}
		
	    
	    

}
