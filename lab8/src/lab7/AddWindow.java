package lab7;
import java.sql.*;
import javax.swing.*; 
import java.awt.event.*;

public class AddWindow extends JFrame {

	JTextField nameT = new JTextField(8);
	JTextField surnameT = new JTextField(8);
	JTextField peselT = new JTextField(8);
	JTextField dateT = new JTextField(8);
	JRadioButton male = new JRadioButton("Mê¿czyzna");
	JRadioButton female = new JRadioButton("Kobieta");
	ButtonGroup mf = new ButtonGroup(); 
	JButton confirm = new JButton("Zatwierdz");
	JComboBox  addresses;
	JComboBox  positions;
	MainWindow mainWindow;
	Connection connection;

	JFrame th = this;
	int ID;
	int positionID;
	
	AddWindow(MainWindow mainWindow, Connection connection) {
		super("Modyfikacja wiersza");
		setSize(400, 500);
		setLocationRelativeTo(null);
		setVisible(true);
		setLayout(null);
		this.mainWindow = mainWindow;
		this.connection = connection;
		
		try {

			JLabel nameL = new JLabel("Imiê");
			nameL.setLocation(20, 20);
			nameL.setSize(100,30);
			
			nameT.setSize(180,30);
			nameT.setLocation(130, 20);
			add(nameL);
			add(nameT);
			
			JLabel surnameL = new JLabel("Nazwisko");
			surnameL.setLocation(20, 60);
			surnameL.setSize(100,30);
			
			surnameT.setSize(180,30);
			surnameT.setLocation(130, 60);
			add(surnameL);
			add(surnameT);
			
			JLabel peselL = new JLabel("Pesel");
			peselL.setLocation(20, 100);
			peselL.setSize(100,30);
			
			peselT.setSize(180,30);
			peselT.setLocation(130, 100);
			add(peselL);
			add(peselT);
			
			JLabel dateL = new JLabel("Data urodzenia");
			dateL.setLocation(20, 140);
			dateL.setSize(100,30);
			
			dateT.setSize(180,30);
			dateT.setLocation(130, 140);

			add(dateL);
			add(dateT);
			
			JLabel genderL = new JLabel("P³eæ");
			genderL.setLocation(20, 180);
			genderL.setSize(100,30);
			
			male.setSelected(false);
			female.setSelected(false);

			female.setSelected(true);

			
			male.setLocation(130, 180);
			female.setLocation(220, 180);
			male.setSize(90, 30);
			female.setSize(90,30);
			
			mf.add(male); 
			mf.add(female);
			add(genderL);
			add(male);
			add(female);
				
			confirm.setSize(100, 20);
			confirm.setLocation(150, 420);
			confirm.addActionListener(new Confirm());
			add(confirm);

			
			JLabel addressL = new JLabel("Adres");
			addressL.setLocation(20, 220);
			addressL.setSize(100,30);
			addresses = new JComboBox();
			addresses.setLocation(130, 220);
			addresses.setSize(180,30);
			add(addressL);
			add(addresses);
			
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery("SELECT Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy FROM Adres WHERE ID NOT IN(SELECT Id_adres FROM Osoba)");
			
			while (result.next()) {
				addresses.addItem(getAddress(result));
			}
			
			JLabel positionL = new JLabel("Stanowisko");
			positionL.setLocation(20, 260);
			positionL.setSize(100,30);
			positions = new JComboBox();
			positions.setLocation(130, 260);
			positions.setSize(180,30);
			positions.addItem("<BRAK>");
			result = statement.executeQuery("SELECT Nazwa FROM Stanowisko");
			while (result.next()) {
				positions.addItem(result.getString(1));
			}
			add(positionL);
			add(positions);
			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(mainWindow, e.getMessage(), "B³¹d", JOptionPane.ERROR_MESSAGE);
		}
	}
	
	public class Confirm implements ActionListener {
		public void actionPerformed(ActionEvent action) {	
			try {

				
				Integer newPosition = null;
				Statement statement = connection.createStatement();
				ResultSet result = statement.executeQuery("SELECT Id FROM Stanowisko WHERE Nazwa='" + positions.getItemAt(positions.getSelectedIndex()) + "'");;
				if (result.next())
					newPosition = result.getInt(1);
				
				result = statement.executeQuery("SELECT Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy, Id FROM Adres WHERE ID NOT IN(SELECT Id_adres FROM Osoba)");
				int addressID = 0;
				String selected = (String)addresses.getItemAt(addresses.getSelectedIndex());
				while (result.next()) {
					while(result.next()) {
						if (selected.equals(getAddress(result)))  {
							addressID = result.getInt(6);
							break;
						}
					}
				}
				result = statement.executeQuery("SELECT TOP 1 ID FROM Osoba ORDER BY ID DESC");
				result.next();
				ID = result.getInt(1) + 1;
				
				PreparedStatement ps = connection.prepareStatement(
					      "INSERT INTO Osoba(imie, nazwisko, pesel, data_urodzenia, plec, id_stanowisko, id_adres, id) VALUES (?,?,?,?,?,?,?,?) ");
				ps.setString(1, nameT.getText());
				ps.setString(2, surnameT.getText());
				ps.setString(3, peselT.getText());
				ps.setString(4, dateT.getText());
				
				if (male.isSelected())
					ps.setString(5, "M");
				else
					ps.setString(5, "K");
				
				if (newPosition != null)
					ps.setInt(6, newPosition);
				else
					ps.setNull(6, Types.NULL);
				
				ps.setInt(7, addressID);
				ps.setInt(8, ID);
				ps.executeUpdate();
				mainWindow.showData("Select Imie, Nazwisko, Pesel FROM Osoba");
				th.dispose();
				
			} catch (Exception e) {
				JOptionPane.showMessageDialog(mainWindow, e.getMessage(), "B³¹d", JOptionPane.ERROR_MESSAGE);
			}
		}
	}
	
	String getAddress(ResultSet result) {
		String address = "";;
		try {	
		address += result.getString(1) + ", " + result.getString(2) + " " + result.getString(3);
			String nr =  result.getString(4);
			if (!result.wasNull()) {
				address += "/" + nr;
			}
			address += ", " + result.getString(5);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(mainWindow, e.getMessage(), "B³¹d", JOptionPane.ERROR_MESSAGE);
		}
		return address;
	}
	
}
