-- Add Roles
insert into roles (role_name, role_rank) values ('administrator', 0);   -- 1
insert into roles (role_name, role_rank) values ('moderator', 1);       -- 2
insert into roles (role_name, role_rank) values ('user', 2);            -- 3


-- Add users
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Francisco', 'Traquete', 40.7128, -74.0060, 'frant7', 'francisco@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Maria', 'Martins', 34.0522, -118.2437, 'maria', 'maria@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 1);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Rebeca', 'Sampaio', 38.76586733113478, -9.328340294084374, 'becass', 'becas.sampaio@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 1);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Rafael', 'Lopes', 38.76542659056428, -9.319570279144052, 'Rafa22', 'rafinha223@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Mary', 'Smith', 52.80498930163646, -7.210197285379516, 'Maryy69', 'MarySmith321@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Juan', 'Pedro', -12.046736440303187, -77.0386049974415, 'JuanP', 'Ruan.pedro23@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Freddy', 'Vargas', -16.723410330675108, -65.06324448960709, 'Freddy01', 'Freddyjsvargas@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Larissa', 'Silveira', -9.294031543781895, -54.20069924751627, 'Lari', 'Larissas.87@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Enzo', 'Lima', -15.80765298134054, -47.840544255732816, 'Enzo', 'Enzo.limaa@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Mariana', 'Gallardo', 7.043495534365549, -66.43902783934018, 'Gall', 'mariana.gall@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Jose', 'Lopez', 3.5955896774857092, -73.13082075397814, 'Lopez', 'Lopez.jose@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Rosa', 'Garcia', 23.837408858393793, -102.33570600603271, 'Rosinha', 'rosagarcia.23@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Tom', 'Lind', 41.885266840975014, -87.67017716980152, 'Tom34', 'Tomdsl.34@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Peter', 'John', 43.85499962955408, -84.61868944881356, 'Peterpan', 'Peterlkj.4@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Gabriel', 'Alejandro', 40.42111161345961, -3.7090739508700903, 'Gaby0', 'Gabriel.alej@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Laura', 'Grimaldo', 39.46900605964421, -0.36975397929131526, 'Laurinha', 'Laura.g2003@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Anastasiya', 'Petrov', 62.210477886242735, 99.02527303704454, 'anasty12', 'Anastasiyapetrov.2001@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Robert', 'Johnson', 34.0522, -118.2437, 'robertjohnson', 'robert@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Michael', 'Brown', 51.5074, -0.1278, 'mikebrown', 'michael@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Emily', 'Davis', 37.7749, -122.4194, 'emilyd', 'emily@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_latitude, user_longitude, user_name, user_email, user_password, user_role) values ('Thomas', 'Anderson', 62.89823483054959, 17.03084546348124, 'neo', 'neo@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);

-- Add profiles
INSERT INTO profiles (profile_users_id, profile_bio)
VALUES
  (1, 'I am a passionate gamer and love to play games with my friends.'),
  (2, 'I am an administrator for this website and ensure that everything runs smoothly.'),
  (3, 'I am a moderator for this website and help keep the community safe.'),
  (4, 'I love playing games and meeting new people.'),
  (5, 'I am a casual gamer who enjoys playing games in my free time.'),
  (6, 'I love playing games and discovering new strategies.');
  (7, 'I am a hardcore gamer and always looking for a challenge.'),
  (8, 'I am a Minecraft enthusiast and enjoy building and exploring new worlds.'),
  (9, 'I enjoy playing games with my friends and having a good time.'),
  (10, 'I am an avid gamer and always looking for new experiences.'),
  (11, 'I am a software engineer who loves playing games in my free time.'),
  (12, 'I am a premium user and enjoy playing games with my friends.'),
  (13, 'I am a moderator for this website and love helping the community.'),
  (14, 'I am a guest user and enjoy trying out new games.'),
  (15, 'I am a developer and love creating games.'),
  (16, 'I am a casual gamer and enjoy playing games in my free time.'),
  (17, 'I am a hardcore gamer and love competing against other players.');

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
insert into games (game_name) values ('Call of Duty: Warzone');
insert into games (game_name) values ('FIFA 22');
insert into games (game_name) values ('Rainbow Six Siege');
insert into games (game_name) values ('Halo Infinite');
insert into games (game_name) values ('Among Us');
insert into games (game_name) values ('Battlefield 2042');
insert into games (game_name) values ('Assassin''s Creed Valhalla');
insert into games (game_name) values ('Cyberpunk 2077');
insert into games (game_name) values ('The Witcher 3: Wild Hunt');
insert into games (game_name) values ('Red Dead Redemption 2');
insert into games (game_name) values ('Genshin Impact');
insert into games (game_name) values ('Super Smash Bros. Ultimate');
insert into games (game_name) values ('NBA 2K22');
insert into games (game_name) values ('Madden NFL 22');

-- Add game modes
INSERT INTO room_modes (mode_name) VALUES ('Team Deathmatch');
INSERT INTO room_modes (mode_name) VALUES ('Free for All');
INSERT INTO room_modes (mode_name) VALUES ('Capture the Flag');
INSERT INTO room_modes (mode_name) VALUES ('King of the Hill');
INSERT INTO room_modes (mode_name) VALUES ('Last Team Standing');
INSERT INTO room_modes (mode_name) VALUES ('Survival');

-- Add rooms
INSERT INTO rooms (room_name, room_code, game_id, mode_id, min_rank, max_rank, max_players, is_private, owner_id)
VALUES
('Team Deathmatch', 'aaaaa', 1, 1, 0, 10, 12, false, 1),
('Free for All', 'bbbbb', 1, 2, 0, 5, 8, false, 2),
('Capture the Flag', 'ccccc', 2, 3, 0, 20, 16, true, 3),
('King of the Hill', 'ddddd', 2, 4, 5, 15, 10, true, 4),
('Last Team Standing', 'eeeee', 3, 5, 10, 20, 12, false, 5),
('Survival', 'fffff', 3, 6, 0, 30, 20, true, 6);
('Grand Theft Auto V', 'ggggg',6, 1, 0, 50, 30, false, 7),
('Minecraft', 'hhhhh', 7, 2, 0, 10, 8, false, 8),
('Apex Legends', 'iiiii',9, 3, 10, 30, 20, true, 9),
('Sea of Thieves', 'jjjjj',10, 4, 0, 50, 16, true, 10);

-- Add game roles
INSERT INTO game_roles (role_name, game_id)
VALUES
('Assassin', 21),
('Brute', 21),
('Archer', 21),
('Mage', 21),
('Warrior', 21),
('Thief', 21),
('Hacker', 22),
('Soldier', 22),
('Scientist', 22),
('Pirate', 10),
('Captain', 10),
('Sailor', 10),
('Navigator', 10);

-- Add room role requirements
INSERT INTO room_role_requirements (room_id, role_id, players_needed)
VALUES
(1, 2, 2),
(1, 3, 8),
(1, 1, 2),
(2, 3, 5),
(2, 1, 1),
(3, 2, 10),
(3, 3, 10),
(3, 1, 2),
(4, 1, 4),
(4, 2, 4),
(4, 3, 2),
(5, 2, 8),
(5, 3, 4),
(6, 1, 10),
(6, 2, 5);
(7, 1, 20),
(8, 2, 4),
(9, 3, 10),
(10, 4, 4);