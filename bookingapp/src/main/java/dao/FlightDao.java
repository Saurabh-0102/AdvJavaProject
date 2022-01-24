package dao;

import java.util.List;

import pojos.Flight;

public interface FlightDao {

	public List<Flight> getFlights(String dcity,String acity);
}
