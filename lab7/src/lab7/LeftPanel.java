package lab7;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;


public class LeftPanel extends JPanel {
	
	JTable table;
	
	public LeftPanel(MainWindow mainWindow, String query, Connection connection) {
		setPreferredSize(new Dimension((int)(mainWindow.getWidth() * 0.7), mainWindow.getHeight()));
		setLayout(new BorderLayout());
		try {
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(query);
			ResultSetMetaData meta = result.getMetaData();
			
			int colCount = meta.getColumnCount();
			String colo[] = new String[colCount];
			DefaultTableModel model = new DefaultTableModel();
			for (int i = 0; i < colCount; i++) {
					model.addColumn(meta.getColumnName(i + 1));
			}
	        while (result.next()) {
	        	String data[] = new String[colCount];
	        	for (int i = 0; i < colCount; i++)
	        		data[i] = result.getString(i + 1);
	        	model.addRow(data);
	        }
	        
	        table = new JTable(model);
	        table.setDefaultEditor(Object.class, null);
	        DefaultListSelectionModel sModel = new DefaultListSelectionModel();
	        sModel.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
	        table.setSelectionModel(sModel);
	        JScrollPane scroll = new JScrollPane(table);
	        add(scroll);
			        
			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "B³¹d po³¹czenia.", "B³¹d", JOptionPane.ERROR_MESSAGE);
		}
	}

	
	JTable getTable() { return table; }
}
