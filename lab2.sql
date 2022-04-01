	CREATE TABLE IF NOT EXISTS lab_mysql.cars (VIN INT PRIMARY KEY,
										  Manufacturer VARCHAR (52),
                                          Model VARCHAR (52),
                                          Year INT,
                                          Color VARCHAR (52)
                                          );
										
	CREATE TABLE IF NOT EXISTS lab_mysql.costumers (Customer_ID INT PRIMARY KEY,
										  Name VARCHAR (52),
                                          Phone VARCHAR (52),
                                          Email VARCHAR (52),
                                          Address VARCHAR (52),
                                          City VARCHAR (52),
                                          State_Province VARCHAR (52),
                                          Country VARCHAR (52),
                                          Postal INT
                                          );
                                          
CREATE TABLE IF NOT EXISTS lab_mysql.salespersons (Staff_ID INT PRIMARY KEY,
										  Name VARCHAR (52),
                                          Store VARCHAR (52)
                                          ); 
                                          
CREATE TABLE IF NOT EXISTS lab_mysql.invoices (Invoice_Number INT PRIMARY KEY,
										  Date DATE,
                                          Car INT,
                                          Customer INT,
                                          Sales_Person INT
                                          ); 
                                          
                                          