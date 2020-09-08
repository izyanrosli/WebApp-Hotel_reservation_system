package HotelData;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class Hotel {

	public Hotel() {}
	
	private String name;
	public static String to;
	public static String from;
	private String floor;
	private String type;
	private int roomNo;
	
	int room=0;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}
	
	public String getFloor() {
		return floor;
	}
	
	public void setFloor(String floor) {
		this.floor = floor;
		
	}
	
	public String getType() {
		if (this.floor.equals("1"))
			type = "Single";
		
		else if (this.floor.equals("2"))
			type = "Double";
		
		else if (this.floor.equals("3"))
			type = "Queen";
		
		else if (this.floor.equals("4"))
			type = "Master-Suit";
		
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public int getRoomNo() {
		return roomNo;
	}
	
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
		//change String to int then room=+this.room (utk collect total room)
	}

	public long calc(String to, String from) throws Exception{
	SimpleDateFormat formatter = new SimpleDateFormat("dd-mmm-yyyy");
	Date date1 = formatter.parse(to);
	Date date2 = formatter.parse(from);
	
	long diff = date2.getTime() - date1.getTime();
	System.out.println ("Days: " + TimeUnit.DAYS.convert(diff,TimeUnit.MINUTES));
	
	return diff;
	}
	public boolean checkClash(Date to, Date from)throws Exception{
		String date1 = "12/30/19";
		String date2 = "12/31/19";
		
		SimpleDateFormat formatter = new SimpleDateFormat ("mm/dd/yy");
		Date da1 = formatter.parse(date1);
		Date da2 = formatter.parse(date2);
		
		if (da1.equals(to) || da1.equals(from) || (da1.after(to) && da1.before(from) )
			|| (da2.equals(to) || da2.equals(from) || (da2.after(to) && da2.before(from)) )) {
			
			return true;
		}
		else return false;
		}
	
	
	public boolean checkRoom(int f, int r) {
		
		int levelArray[][] = new int[10][20];
		
		levelArray[1][3]=1;
		levelArray[1][4]=1;
		levelArray[2][8]=1;
		
		if (levelArray[1][3] == levelArray[f][r] || levelArray[1][4] == levelArray[f][r] || levelArray[2][8] == levelArray[f][r] ) {
			return true;
		}
		
		else 
			return false;
		
	

	}
}