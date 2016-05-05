package bean;

public class SimpleNode extends Node {
	public SimpleNode(double longitude, double latitude) {
		super(longitude, latitude);
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "SimpleNode longitude = " + this.getLongitude() + ", latitude = " + this.getLatitude();
	}
}
