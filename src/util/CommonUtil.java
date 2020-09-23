package util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;


import service.IAdminService;

public class CommonUtil {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IAdminService.class.getName());

	public static final Properties properties = new Properties();

	static {
		try {
			
			// Read the property only once when load the class
			properties.load(Queryutil.class.getResourceAsStream(CommonConst.PROPERTY_FILE));
			
		} catch (IOException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	public static String generateIDs(ArrayList<String> arrayList) {

		String id;
		int next = arrayList.size();
		next++;
		id =CommonConst.ID_PREFIX + next;
		if (arrayList.contains(id)) {
			next++;
			id = CommonConst.ID_PREFIX + next;
		}
		return id;
	}
	
	
	
	
	
}
