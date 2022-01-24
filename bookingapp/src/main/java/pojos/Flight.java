package pojos;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name="tbl_flight")
public class Flight {

	@Id@GeneratedValue
	private int id;
	private String airLine;
	private String depCity;
	private String arrCity;
	private LocalTime depTime;

		public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAirLine() {
		return airLine;
	}

	public void setAirLine(String airLine) {
		this.airLine = airLine;
	}

	public String getDepCity() {
		return depCity;
	}
	
	public void setDepCity(String depCity) {
		this.depCity = depCity;
	}
	
	public String getArrCity() {
		return arrCity;
	}

	public void setArrCity(String arrCity) {
		this.arrCity = arrCity;
	}

	public LocalTime getDepTime() {
		return depTime;
	}

	public void setDepTime(LocalTime depTime) {
		this.depTime = depTime;
	}

	@Override
	public String toString() {
		return "Flight [id=" + id + ", airLine=" + airLine + ", depCity=" + depCity + ", arrCity=" + arrCity
				+ ", depTime=" + depTime + "]";
	}
}
