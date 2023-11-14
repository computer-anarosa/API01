-- Apagar o banco de dados caso já exista.            
-- DROP DATABASE IF EXISTS  db_items;

-- Cria o banco de dados com atenção à tabela de caracteres. 
CREATE DATABASE db_items 
	CHARACTER SET utf8mb4 
    COLLATE utf8mb4_general_ci;
  
  -- Selecionar o banco de dados,
  USE db_items;
  
-- Cria a tabela 'user' conforme o modelo. 
CREATE TABLE user (
user_id INT PRIMARY KEY AUTO_INCREMENT, 
user_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
user_name VARCHAR(127) NOT NULL,
user_email VARCHAR(255) NOT NULL,
user_password VARCHAR(63) NOT NULL,
user_birth DATE,
user_status ENUM('on', 'off') DEFAULT 'on'
);

-- Insere dados em 'user'
INSERT INTO user (user_name, user_email, user_password, user_birth) VALUE
('Ana da silva', 'dos@gmail.com', '4564', '2003-12-06'),
('Vick', 'lory@gmail.com', '4567', '2005-05-14'),
('Rose', 'rosme@gmail.com', '4561', '1978-03-12');

-- Listar a inserção em 'user'. 
SELECT * FROM user WHERE user_status = 'on' ORDER BY 'user_name';

-- Apaga o 'Ana'. 
UPDATE user SET user_status = 'off' WHERE user_id = '1';