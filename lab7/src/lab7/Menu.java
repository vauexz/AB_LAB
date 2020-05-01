package lab7;


import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.DriverManager;

import javax.swing.*;


@SuppressWarnings("serial")
public class Menu extends JMenuBar {

	public JMenuItem getData;
	private MainWindow mainWindow;
	
	public Menu(MainWindow mainWindow) {
		this.mainWindow = mainWindow;
		JMenu menu = new JMenu("Baza danych");
		getData = new JMenuItem("Pobierz dane");
		getData.addActionListener(new ConnectDB());
		menu.add(getData);
		add(menu);
	}	
		
	public class ConnectDB implements ActionListener {
		public void actionPerformed(ActionEvent action) {	
			mainWindow.connect();
		}
	}
}
