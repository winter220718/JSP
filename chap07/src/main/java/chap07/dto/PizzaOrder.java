package chap07.dto;

public class PizzaOrder {
	private String name;
	private String address;
	private String crust;
	private String size;
	private String topping;
	private String instruction;
	
	public PizzaOrder(String name, String address, String crust,
			String size, String topping, String instruction) {
		this.name = name;
		this.address = address;
		this.crust = crust;
		this.size = size;
		this.topping = topping;
		this.instruction = instruction;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getCrust() {
		return crust;
	}

	public String getSize() {
		return size;
	}

	public String getTopping() {
		return topping;
	}

	public String getInstruction() {
		return instruction;
	}
	
	
}
