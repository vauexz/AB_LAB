package lab7;

import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class RightPanel extends JPanel {
	
	MainWindow mainWindow;
	private JTextField textField;
	
	RightPanel(MainWindow mainWindow) {
		
		this.mainWindow = mainWindow;
		setPreferredSize(new Dimension((int)(mainWindow.getWidth() * 0.3), mainWindow.getHeight()));
		setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		
		Box box1 = Box.createHorizontalBox();
		Box box2 = Box.createHorizontalBox();
		Box box3 = Box.createHorizontalBox();
		Box box4 = Box.createHorizontalBox();
		Box box5 = Box.createHorizontalBox();
		Box box6 = Box.createHorizontalBox();
		Box box7 = Box.createHorizontalBox();
		
		JLabel label = new JLabel("Wprowadz dane");
		box1.add(label);
		
		textField = new JTextField(10);
		textField.setMaximumSize( textField.getPreferredSize() );
		box2.add(textField);
		
		JButton search = new JButton("Szukaj");
		search.addActionListener(new Search());
		box3.add(search);
	
		JButton show = new JButton("Pokaz");
		show.setMaximumSize(new Dimension(100,20));
		show.addActionListener(new ShowRowInfo());
		JButton edit = new JButton("Zmie�");
		edit.addActionListener(new EditRow());
		edit.setMaximumSize(new Dimension(100,20));
		JButton delete = new JButton("Usu�");
		delete.setMaximumSize(new Dimension(100,20));
		delete.addActionListener(new DeleteRow());
		JButton add = new JButton("Dodaj");
		add.setMaximumSize(new Dimension(100,20));
		add.addActionListener(new AddRow());
		box4.add(add);
		box5.add(show);
		box6.add(edit);
		box7.add(delete);
		add(Box.createRigidArea(new Dimension(0, 10)));
		add(box1);
		add(Box.createRigidArea(new Dimension(0, 5)));
		add(box2);
		add(Box.createRigidArea(new Dimension(0, 5)));
		add(box3);
		add(Box.createRigidArea(new Dimension(0, 40)));
		add(box4);
		add(Box.createRigidArea(new Dimension(0, 5)));
		add(box5);
		add(Box.createRigidArea(new Dimension(0, 5)));
		add(box6);
		add(Box.createRigidArea(new Dimension(0, 5)));
		add(box7);
		add(Box.createRigidArea(new Dimension(0, 5)));
	}
	
	public class Search implements ActionListener {
		public void actionPerformed(ActionEvent action) {
			mainWindow.showData("SELECT Imie, Nazwisko, Pesel FROM Osoba WHERE imie LIKE '%" + textField.getText() + "%' OR nazwisko LIKE '%" + textField.getText() + "%'");
		}
	}
	public class ShowRowInfo implements ActionListener {
		public void actionPerformed(ActionEvent action) {	
			mainWindow.showRowInfo();
		}
	}
	public class EditRow implements ActionListener {
		public void actionPerformed(ActionEvent action) {	
			mainWindow.editRow();
		}
	}
	public class AddRow implements ActionListener {
		public void actionPerformed(ActionEvent action) {	
			mainWindow.addRow();
		}
	}
	public class DeleteRow implements ActionListener {
		public void actionPerformed(ActionEvent action) {	
			mainWindow.deleteRow();
		}
	}
	
	
}
