package lab7;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import javax.swing.*;


@SuppressWarnings("serial")
public class MainWindow extends JFrame{

	JFrame popup;
	Connection connection = null;
	LeftPanel leftPanel = null;
	RightPanel rightPanel = null;
	
	public MainWindow(String title, int width, int height) {
		super(title);
		setSize(width, height);
		setResizable(false);
		setLayout(new BorderLayout());
		setLocationRelativeTo(null);
		setJMenuBar(new Menu(this));
		rightPanel = new RightPanel(this);
		setVisible(true);
	}

	public void connect() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(DBConnection.url, DBConnection.user, DBConnection.password);
			showData("SELECT Imie, Nazwisko, Pesel FROM Osoba");
		} catch (Exception e) { 
			JOptionPane.showMessageDialog(this, "B³¹d po³¹czenia.", "B³¹d", JOptionPane.ERROR_MESSAGE);
		}
	}
	
	public void showData(String query) {	
		if (leftPanel != null) 
			remove(leftPanel);
		if (rightPanel != null) 
			remove(rightPanel);
		
		leftPanel = new LeftPanel(this, query, connection);
		
		add(leftPanel, BorderLayout.WEST);
		add(rightPanel,BorderLayout.EAST);
		revalidate();
		repaint();
		setVisible(true);
	}
	
	public void showRowInfo() {
		JTable table = leftPanel.getTable();
		
		if (table.getSelectedRow() == -1)
				return;
		
		int row = table.getSelectedRow();
		int col = table.getColumnCount();
		
		String where = "";
		for (int i = 0; i < col; i++) {
			where += table.getColumnName(i) + "='" + table.getValueAt(row, i) + "' AND ";
		}
		where = where.substring(0, where.length() - 5);
		
		String query = "SELECT Imie, Nazwisko, Pesel, Data_urodzenia, Plec, Id_adres, Id_stanowisko FROM osoba WHERE " + where;
		try {
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(query);
			popup = new JFrame("Szczegó³owe informacje");
			popup.setLayout(new GridLayout(7,1));
			popup.setSize(320, 300);
			popup.setResizable(false);
			popup.setVisible(true);
			popup.setLocationRelativeTo(null);

			if (result.next()) {
				popup.add(new JLabel(" Imiê: " + result.getString(1)));
				popup.add(new JLabel(" Nazwisko: " + result.getString(2)));
				popup.add(new JLabel(" Pesel: " + result.getString(3)));
				popup.add(new JLabel(" Data urodzenia: " + result.getString(4)));
				popup.add(new JLabel(" P³eæ: " + (result.getString(5) == "K" ? "Kobieta" : "Mê¿cyzzna")));
				
				int address_id = result.getInt(6);
				
				String position = "brak";
				result = statement.executeQuery("SELECT Nazwa FROM Stanowisko WHERE Id=" + result.getInt(7));
				if (result.next())
					position = result.getString(1);						
				
				String address = "";
				result = statement.executeQuery("SELECT Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy FROM Adres WHERE Id=" + address_id);
				if (result.next()) {
					address += result.getString(1) + ", " + result.getString(2) + " " + result.getString(3);
					String nr =  result.getString(4);
					if (!result.wasNull()) {
						address += "/" + nr;
					}
					address += ", " + result.getString(5);
					
				}
				
				popup.add(new JLabel(" Adres: " + address));
				popup.add(new JLabel(" Stanowisko: " + position));
				
			}
			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "B³¹d po³¹czenia.", "B³¹d", JOptionPane.ERROR_MESSAGE);
		}
		
	}
}
