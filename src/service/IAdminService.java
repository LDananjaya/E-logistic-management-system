package service;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;
import model.Map;



public interface IAdminService {

	
public static final Logger log = Logger.getLogger( IAdminService.class.getName());

	
	public void adddetails(Map map);
	
	
	
	
	
	
}
