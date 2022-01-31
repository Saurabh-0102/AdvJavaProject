package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="tbl_flight")
public class Flight {

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Cascade(CascadeType.ALL)
		private int flightNumber;
	    private String airlines;
	    private String departureCity;
	    private String arrivalCity;
	    private String time;
		
	    
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
		public String getTime() {
			return time;
		}
		public void setTime(String time) {
			this.time = time;
		}
		@Override
		public String toString() {
			return "Flight Details : -FlightNumber=" + flightNumber + ", airlines=" + airlines + ", From="
					+ departureCity + ", To=" + arrivalCity + ", Time=" + time;
		}		
}
