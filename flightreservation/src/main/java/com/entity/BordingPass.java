package com.entity;
import javax.persistence.*;

@Entity
@Table(name="tbl_bordingpass")
public class BordingPass {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int amount;
	private int Seats;
	
	@OneToOne
	@JoinColumn(name="Flight_No")
	private Flight flight;
	
	@OneToOne
	@JoinColumn(name="passenger_id")
	private User user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getSeats() {
		return Seats;
	}

	public void setSeats(int seats) {
		Seats = seats;
	}

	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
