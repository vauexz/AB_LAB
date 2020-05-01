package lab6;

import java.util.Scanner;
import java.sql.*;

@SuppressWarnings("resource")
public class Exercise {


	
	public void ex1() {		
		try {
			Connection connection = DBConnection.getConnection();
			System.out.print("Nazwa tabeli: ");
			String tableName = new Scanner(System.in).nextLine();
			
			String query = "SELECT * FROM " + tableName;
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(query);
			ResultSetMetaData meta = result.getMetaData();
			
			for (int i = 1; i <= meta.getColumnCount(); i++) {
				System.out.print(String.format("%-30s %s", meta.getColumnName(i), " | "));
			}
			
			System.out.println();
			
			while (result.next()) {
				for (int i = 1; i <= meta.getColumnCount(); i++) {
					System.out.print(String.format("%-30s %s", result.getString(i), " | "));
				}
				System.out.println();
			}
			connection.close();
		} catch (Exception e) {	
			System.out.println(e.getMessage());
		}
	}
	
	public void ex2() {
		try {
			
			Connection connection = DBConnection.getConnection();
			String query = 
					"SELECT Imie, Nazwisko, (DATEDIFF(YEAR, Data_urodzenia, GETDATE())) as Wiek FROM Osoba " +
					"JOIN Adres " +
					"ON Osoba.Id_adres = Adres.Id " +
					"WHERE Miejscowosc IN('Gdañsk', 'Gdynia', 'Sopot')";
								;
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(query);
			ResultSetMetaData meta = result.getMetaData();
			
			for (int i = 1; i <= meta.getColumnCount(); i++) {
				System.out.print(String.format("%-30s %s", meta.getColumnName(i), " | "));
			}
			
			System.out.println();
			
			while (result.next()) {
				for (int i = 1; i <= meta.getColumnCount(); i++) {
					System.out.print(String.format("%-30s %s", result.getString(i), " | "));
				}
				System.out.println();
			}
			connection.close();
		} catch (Exception e) {	
			System.out.println(e.getMessage());
		}
	}
	
	public void ex3() {
		try {
			Connection connection = DBConnection.getConnection();
			String query = 
					"SELECT ( " +
							"CASE " +
							"WHEN Plec = 'k' THEN 'Kobiety' " +
							"ELSE 'Mê¿czyŸni' " +
							"END " +
						") AS Plec, " +
						"COUNT(*) as 'Liczba zatrudnionych', " +
						"MAX(Pensja) as 'Najwiêksza pensja', " +
						"MIN(Pensja) as 'Najni¿sza pensja', " +
						"AVG(Pensja) as 'Œrednia pensja' " +
						"FROM Osoba JOIN Stanowisko " +
						"ON Osoba.Id_stanowisko = Stanowisko.Id " +
						"GROUP BY Plec";
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(query);
			ResultSetMetaData meta = result.getMetaData();
			
			for (int i = 1; i <= meta.getColumnCount(); i++) {
				System.out.print(String.format("%-30s %s", meta.getColumnName(i), " | "));
			}
			
			System.out.println();
			
			while (result.next()) {
				for (int i = 1; i <= meta.getColumnCount(); i++) {
					System.out.print(String.format("%-30s %s", result.getString(i), " | "));
				}
				System.out.println();
			}
			connection.close();
		} catch (Exception e) {	
			System.out.println(e.getMessage());
		}
	}
	
	public void ex4() {
		try {
			Connection connection = DBConnection.getConnection();
			System.out.print("Nazwa stanowiska: ");
			String position = new Scanner(System.in).nextLine();
			String query = 
					"SELECT (1.23 * Pensja) AS Brutto FROM Stanowisko WHERE Nazwa='" + position + "'";
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(query);
		
			
			if (result.next()) {
				System.out.println("Pensja brutto na stanowisku " + position + " to " + result.getString(1));
			} else {
				System.out.println("Nie ma stanowiska " + position);
			}
			connection.close();
		} catch (Exception e) {	
			System.out.println(e.getMessage());
		}
	}
	
	public void ex5() {
		try {
			Connection connection = DBConnection.getConnection();
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery("SELECT TOP 1 Id FROM Osoba ORDER BY Id DESC");
			result.next();
			int oID = result.getInt(1) + 1;
			result = statement.executeQuery("SELECT TOP 1 Id FROM Adres ORDER BY Id DESC");
			result.next();
			int aID = result.getInt(1) + 1;
			
			String query = 
					"INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy) " + 
					"VALUES (" + aID + ", 'Gdañsk', 'Ulicowa', 50, NULL, '80-840')";			
			statement.executeUpdate(query);
			query = 
					"INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)\r\n" + 
					"VALUES (" + oID + ", " + aID + ", NULL, 'Szymon', 'P', 'm', '1997-09-09', '97090911111')";			
			statement.executeUpdate(query);
			
			connection.close();
		} catch (Exception e) {	
			System.out.println(e.getMessage());
		}
	}
	
	public void ex6() {
		try {
			Connection connection = DBConnection.getConnection();
			connection.setAutoCommit(false);
			Statement statement = connection.createStatement();
			statement.executeUpdate(
					  "IF COL_LENGTH('Stanowisko','StaraPensja') IS NULL "
					+ 	"ALTER TABLE Stanowisko ADD StaraPensja DECIMAL(8,2)");
			
			System.out.print("Nazwa stanowiska: ");
			String position = new Scanner(System.in).nextLine();
			
			
			ResultSet result = statement.executeQuery("SELECT Pensja FROM Stanowisko WHERE Nazwa='" + position + "'");
			if (result.next()) {
				double oldSalary = result.getDouble(1);
				
				System.out.println("Stara pensja: " + oldSalary);
				System.out.print("Nowa pensja: ");
				double newSalary = new Scanner(System.in).nextDouble();
				
				statement.executeUpdate("UPDATE Stanowisko SET StaraPensja=" + oldSalary +", Pensja=" + newSalary + " WHERE Nazwa='"+ position +"'");
				if (oldSalary < 0.9 * newSalary) {
					connection.rollback();
					System.out.println("Zmiany wycofane");
				} else {
					connection.commit();
					System.out.println("Zmiany zapisane");
				}
			} else {
				System.out.println("Nie ma stanowiska " + position);
			}

			connection.close();
		} catch (Exception e) {	
			System.out.println(e.getMessage());
		}
	}
	
	public void ex7() {
		try {
			Connection connection = DBConnection.getConnection();
			connection.setAutoCommit(false);
			Statement statement = connection.createStatement();
			
			System.out.print("Liczba osób do usuwania: ");
			int n = new Scanner(System.in).nextInt();
			Double rowsCount, currentRowsCount;
			ResultSet result = statement.executeQuery("SELECT COUNT(*) AS ilsocWierszy FROM Osoba");
			result.next();
			currentRowsCount = rowsCount = result.getDouble("ilsocWierszy");
		
			
			while (true) {
				result = statement.executeQuery("SELECT Id FROM Osoba ORDER BY Data_urodzenia ASC");
				int toDel[] = new int[n];
				int i = 0;
				
				for (; (i < n && result.next()); i++ ) 
					toDel[i] = result.getInt(1);
				
				currentRowsCount -= i;
				
				while (i-- != 0)
					statement.executeUpdate("DELETE FROM Osoba WHERE Id=" + toDel[i]);	
				
				if (currentRowsCount < 0.5 * rowsCount) {
					 if ((rowsCount - currentRowsCount) > 0.7 * rowsCount)
						 connection.rollback();
					 else
						 connection.commit();
					 break;
				} else
					connection.commit();
			}
			connection.close();
		} catch (Exception e) {	
			System.out.println(e.getMessage());
		}
	}
	
}
