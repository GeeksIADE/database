-- Add Roles
insert into roles (role_name, role_rank) values ('administrator', 0);   -- 1
insert into roles (role_name, role_rank) values ('moderator', 1);       -- 2
insert into roles (role_name, role_rank) values ('user', 2);            -- 3


-- Add users
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Francisco', 'Traquete', 'frant7', 'francisco@gmail.com', 'test123', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Maria', 'Martins', 'maria', 'maria@gmail.com', 'test123', 1);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Mario', 'Nascimento', 'darkarp', 'mario@gmail.com', 'test123', 2);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Afonso', 'Goulart', 'afih', 'afonso@gmail.com', 'test123', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Roberta', 'Santos', 'robi', 'roberta@gmail.com', 'test123', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('João', 'Garcia', 'johnny', 'joao@gmail.com', 'test123', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Miguel', 'Bernardo', 'michael', 'michael@gmail.com', 'test123', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Laura', 'Martins', 'lala', 'laura@gmail.com', 'test123', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Pedro', 'Costa', 'costa', 'pedro@gmail.com', 'test123', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Antónia', 'Manaia', 'tozita', 'antonia@gmail.com', 'test123', 3);


-- Add games
insert into games (game_name) values ('Counter-Strike: Global Offensive');
insert into games (game_name) values ('League of Legends');
insert into games (game_name) values ('Smite');
insert into games (game_name) values ('Valorant');
insert into games (game_name) values ('Dota 2');
insert into games (game_name) values ('Grand Theft Auto V');
insert into games (game_name) values ('Minecraft');
insert into games (game_name) values ('Fortnite');
insert into games (game_name) values ('Apex Legends');
insert into games (game_name) values ('Sea of Thieves');
insert into games (game_name) values ('World of Warcraft');
insert into games (game_name) values ('Hearthstone');
insert into games (game_name) values ('Rocket League');
insert into games (game_name) values ('Overwatch 2');


-- Add profiles
insert into profiles (profile_bio) values ('');