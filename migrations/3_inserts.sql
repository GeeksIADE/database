-- Add Roles
insert into roles (role_name, role_rank) values ('administrator', 0);   -- 1
insert into roles (role_name, role_rank) values ('moderator', 1);       -- 2
insert into roles (role_name, role_rank) values ('user', 2);            -- 3


-- Add users
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Francisco', 'Traquete', 'frant7', 'francisco@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Maria', 'Martins', 'maria', 'maria@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 1);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Mario', 'Nascimento', 'darkarp', 'mario@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 2);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Afonso', 'Goulart', 'afih', 'afonso@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Roberta', 'Santos', 'robi', 'roberta@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('João', 'Garcia', 'johnny', 'joao@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Miguel', 'Bernardo', 'michael', 'michael@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Laura', 'Martins', 'lala', 'laura@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Pedro', 'Costa', 'costa', 'pedro@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Antónia', 'Manaia', 'tozita', 'antonia@gmail.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('John', 'Doe', 'johndoe', 'johndoe@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 1);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Jane', 'Doe', 'janedoe', 'janedoe@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 2);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Robert', 'Johnson', 'robertj', 'robertj@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Emily', 'Smith', 'emilys', 'emilys@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('David', 'Miller', 'davidm', 'davidm@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Sarah', 'Wilson', 'sarahw', 'sarahw@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);
insert into users (user_first_name, user_last_name, user_name, user_email, user_password, user_role) values ('Andrew', 'Brown', 'andrewb', 'andrewb@example.com', '$2a$10$wRlbp8spWVi1O7JQ1NhzcuIvEUZiEKHNZzsEp/AOVzRScoP0WA97a', 3);

-- Add profiles
INSERT INTO profiles (profile_users_id, profile_bio)
VALUES
  (1, 'I am a passionate gamer and love to play games with my friends.'),
  (2, 'I am an administrator for this website and ensure that everything runs smoothly.'),
  (3, 'I am a moderator for this website and help keep the community safe.'),
  (4, 'I love playing games and meeting new people.'),
  (5, 'I am a casual gamer who enjoys playing games in my free time.'),
  (6, 'I love playing games and discovering new strategies.'),
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
('Survival', 'fffff', 3, 6, 0, 30, 20, true, 6),
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
(6, 2, 5),
(7, 1, 20),
(8, 2, 4),
(9, 3, 10),
(10, 4, 4);