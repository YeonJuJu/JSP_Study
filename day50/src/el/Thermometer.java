package el;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {
	private Map<String, Double> th = new HashMap<>();
	
	public void setCel(String loc, Double val) {
		th.put(loc, val);
	}
	
	public Double getCel(String loc) {
		return th.get(loc);
	}
	
	public Double getFar(String loc) {
		Double c = getCel(loc);
		return (180/100) * c + 32;
	}
}
