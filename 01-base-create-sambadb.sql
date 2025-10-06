CREATE DATABASE "samba_db";

\c "samba_db";

CREATE SCHEMA if not exists samba;

CREATE TABLE if not exists public.escolas (
    id INT NOT NULL PRIMARY KEY SERIAL,
    name VARCHAR(255) NOT NULL,
    fundacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    titulos INT NOT NULL DEFAULT 0,
    imagem VARCHAR(255)
);

-- Criar tabela user
-- CREATE TABLE user (
--     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     discord_id VARCHAR(255) NOT NULL,
--     username VARCHAR(255) NOT NULL,
--     global_name VARCHAR(255),
--     joined_at DATETIME,
--     discord_created_at DATETIME,
--     update_at DATETIME,
--     last_active DATETIME,
--     create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--     bot TINYINT(1),
--     email VARCHAR(255),
--     status INT NOT NULL,
--     user_role INT,
--     FOREIGN KEY (user_role) REFERENCES role(id)
-- );
