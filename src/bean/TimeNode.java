package bean;

public class TimeNode extends Node {
	private String time;

	public TimeNode(double longitude, double latitude, String time) {
		super(longitude, latitude);
		this.time = time;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "TimeNode longitude = " + this.getLongitude() + ", latitude = " + this.getLatitude() + ",time = "
				+ this.getTime();
	}
}
