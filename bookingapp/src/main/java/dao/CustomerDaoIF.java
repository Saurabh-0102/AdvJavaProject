package dao;

public interface CustomerDaoIF {

	public Object addCustomer(Object obj);
	public Object getCustomer(String email,String password);
	public Object getAllCustomer();
}
