package service;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import model.Map;
//import model.Product;


import util.CommonConst;

import util.CommonUtil;
import util.DBconnection;
import util.Queryutil;


public class AdminServiceImpl implements IAdminService{


	public static final Logger log = Logger.getLogger(AdminServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;
	
	private PreparedStatement preparedStatement;
	
	
	public void adddetails(Map map)
	{
		

		String ID = CommonUtil.generateIDs(getIDs());
		
		try {
			connection = DBconnection.getDBConnection();
			
			
			preparedStatement = connection
					.prepareStatement(Queryutil.queryByID(CommonConst.QUERY_ID_INSERT_EMPLOYEES));
			connection.setAutoCommit(false);
			
			//Generate member IDs
			map.setId(ID);
			preparedStatement.setString(CommonConst.COLUMN_INDEX_ONE,map.getId());
			preparedStatement.setString(CommonConst.COLUMN_INDEX_TWO,map.getOwnername());
			preparedStatement.setString(CommonConst.COLUMN_INDEX_THREE,map.getLocation());
			preparedStatement.setString(CommonConst.COLUMN_INDEX_FOUR,map.getLongtitiude());
			preparedStatement.setString(CommonConst.COLUMN_INDEX_FIVE,map.getLatitude());
			
			// Add member
			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
		
	}
	
private ArrayList<String> getIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		/*
		 * List of member IDs will be retrieved from AdminQuery.xml
		 */
		try {
			connection = DBconnection.getDBConnection();
			preparedStatement = connection
					.prepareStatement(Queryutil.queryByID(CommonConst.QUERY_ID_GET_EMPLOYEE_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConst.COLUMN_INDEX_ONE));
			}
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
}

	
	
	
}
