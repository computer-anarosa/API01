-- Apagar as tabelas caso existam
-- CUIDADO! Isso destrói todo o banco de dados.
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS owner;

-- Cria a table 'owner'.
CREATE TABLE owner (
    owner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    owner_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    owner_name TEXT,
    owner_email TEXT,
    owner_password TEXT,
    owner_birth DATE,
    owner_status TEXT DEFAULT 'on',
    owner_field1 TEXT,
    owner_field2 TEXT
);

-- Popular a tabela 'owner' com dados 'fake'.
INSERT INTO owner
    (owner_name, owner_email, owner_password,
    owner_birth, owner_status, owner_field1, owner_field2, owner_date)
VALUES
    ('Jane Smith', 'jane.smith@email.com', 'pass456', '1985-08-22', 'off', 'valor 1', 'info1', strftime('%Y-%m-%d %H:%M:%S', 'now', '-'|| ABS(random() % 365) || ' days')),
    ('Bob Johnson', 'bob.johnson@email.com', 'abc@123', '1995-03-10', 'on', 'valor 2', 'info2', strftime('%Y-%m-%d %H:%M:%S', 'now', '-'|| ABS(random() % 365) || ' days')),
    ('Alice Brown', 'alice.brown@email.com', 'secretword', '1982-11-28', 'off', 'valor 3', 'info 3', strftime('%Y-%m-%d %H:%M:%S', 'now', '-'|| ABS(random() % 365) || ' days')),
    ('Charlie Wilson', 'charlie@email.com', 'qwerty', '1998-07-03', 'on', 'valor 4', 'info 4', strftime('%Y-%m-%d %H:%M:%S', 'now', '-'|| ABS(random() % 365) || ' days')),
	('Random User', 'random.user@email.com', 'randompassword', '1989-11-20', 'on', 'Random_Field1', 'Random_Field2', strftime('%Y-%m-%d %H:%M:%S', 'now', '-' || ABS(random() % 365) || ' days'));

	
-- cria a table 'item'.
CREATE TABLE item(
     item_id INTEGER PRIMARY KEY AUTOINCREMENT,
	 item_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	 item_name TEXT,
	 item_description TEXT,
	 item_location TEXT,
	 item_owner INTEGER,
	 item_status TEXT DEFAULT 'on',
	 item_field1 TEXT,
	 item_field2 TEXT,
	 FOREIGN KEY (item_owner) REFERENCES owner (owner_id)
);

--Popular a tabela 'item' com dados 'fake'.
INSERT INTO item 
    (item_date, item_name, item_description, item_location, item_owner, item_status)
VALUES
    ('2023-12-06 14:15:00', 'Smartphone', 'High-end smartphone with advanced features', 'Electronics Store', 1, 'on'),
    ('2023-11-06 14:30:00', 'Pastel', 'Delicious pastry filled with various ingredients', 'Bakery', 2, 'on'),
    ('2023-7-08 14:30:00', 'Item 3', 'Description for Item 3', 'Location C', 3, 'on'),
    ('2023-1-06 14:30:00', 'Item 4', 'Description for Item 4', 'Location D', 4, 'on'),
    ('2023-2-06 14:30:00', 'Item 5', 'Description for Item 5', 'Location E', 5, 'on');

