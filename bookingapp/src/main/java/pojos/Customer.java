package pojos;
import javax.persistence.*;

@Entity
@Table(name="tbl_customer")
public class Customer {

	@Id
	@GeneratedValue
	private int id;
	private String name;
	@Column(unique = true)
	private String email;
	@Column(unique=true)
	private String number;
	private String password;
	
	
	public Customer() {}
	
	public Customer(String name, String email, String number, String password) {
		super();
		this.name = name;
		this.email = email;
		this.number = number;
		this.password = password;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", email=" + email + ", number=" + number + "]";
	}
	
	
	
	
}
