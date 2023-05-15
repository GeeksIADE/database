CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TYPE user_role AS ENUM ('admin', 'user');
CREATE CAST (character varying AS user_role) WITH INOUT AS ASSIGNMENT;

create table roles (
    role_id SERIAL NOT NULL CONSTRAINT roles_pkey PRIMARY KEY,
    role_name varchar,
    role_rank int
);

create table users (
    user_id SERIAL NOT NULL CONSTRAINT users_pkey PRIMARY KEY,
    user_first_name varchar not null,
    user_last_name varchar,
    user_latitude float,
    user_longitude float,
    user_geohash varchar,
    geopoint geography(Point, 4326),
    user_name varchar not null unique,
    user_email varchar not null unique,
    user_password varchar not null,
    user_email_verified boolean not null default false,
    user_role int not null,
    user_active boolean not null default true,
    user_reset_code varchar,
    user_register_code varchar,
    user_reset_code_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    account_deleted_at timestamp with time zone,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,

    CONSTRAINT users_role_pk FOREIGN KEY (user_role) REFERENCES roles (role_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

create table games (
    game_id SERIAL NOT NULL CONSTRAINT games_pkey PRIMARY KEY,
    game_name varchar not null,
    has_roles BOOLEAN NOT NULL DEFAULT false,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP

);

CREATE TABLE game_roles (
    role_id SERIAL NOT NULL CONSTRAINT game_roles_pkey PRIMARY KEY,
    role_name VARCHAR NOT NULL,
    game_id INT NOT NULL,
    CONSTRAINT game_roles_fk_game FOREIGN KEY (game_id) REFERENCES games (game_id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table profiles (
    profile_id SERIAL NOT NULL CONSTRAINT profiles_pkey PRIMARY KEY,
    profile_avatar varchar,
    profile_bio varchar,
    profile_users_id int,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,

    CONSTRAINT profile_fk_user FOREIGN KEY ( profile_users_id ) REFERENCES users (user_id)
    ON DELETE CASCADE ON UPDATE CASCADE

);

create table profile_ratings (
    profile_rating_id SERIAL NOT NULL CONSTRAINT profile_ratings_pkey PRIMARY KEY,
    profile_rating_value int,
    profile_rating_profile_id int,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,

    CONSTRAINT pr_fk_profile FOREIGN KEY (profile_rating_profile_id) REFERENCES profiles (profile_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);


create table profile_comments (
    profile_comment_id SERIAL NOT NULL CONSTRAINT profile_comments_pkey PRIMARY KEY,
    profile_comment_text varchar not null,
    profile_comment_profile_id int,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,

    CONSTRAINT pc_fk_profile FOREIGN KEY (profile_comment_profile_id) REFERENCES profiles (profile_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE room_modes (
    mode_id SERIAL NOT NULL CONSTRAINT room_modes_pkey PRIMARY KEY,
    mode_name VARCHAR NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE rooms (
    room_id SERIAL NOT NULL CONSTRAINT rooms_pkey PRIMARY KEY,
    room_name VARCHAR NOT NULL,
    room_code VARCHAR UNIQUE,
    game_id INT NOT NULL,
    mode_id INT NOT NULL,
    min_rank INT,
    max_rank INT,
    max_players INT,
    is_private BOOLEAN NOT NULL DEFAULT false,
    owner_id INT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT rooms_fk_game FOREIGN KEY (game_id) REFERENCES games (game_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT rooms_fk_mode FOREIGN KEY (mode_id) REFERENCES room_modes (mode_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT rooms_fk_owner FOREIGN KEY (owner_id) REFERENCES users (user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE room_role_requirements (
    requirement_id SERIAL NOT NULL CONSTRAINT room_role_requirements_pkey PRIMARY KEY,
    room_id INT NOT NULL,
    role_id INT NOT NULL,
    players_needed INT NOT NULL,
    players_joined INT NOT NULL DEFAULT 0,
    CONSTRAINT room_role_requirements_fk_room FOREIGN KEY (room_id) REFERENCES rooms (room_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT room_role_requirements_fk_role FOREIGN KEY (role_id) REFERENCES game_roles (role_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE room_members (
    room_member_id SERIAL NOT NULL CONSTRAINT room_members_pkey PRIMARY KEY,
    room_id INT NOT NULL,
    user_id INT NOT NULL,
    joined_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT room_members_fk_room FOREIGN KEY (room_id) REFERENCES rooms (room_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT room_members_fk_user FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE ON UPDATE CASCADE
);