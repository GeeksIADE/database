CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
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
    user_location varchar,
    user_name varchar not null unique,
    user_email varchar not null unique,
    user_password varchar not null,
    user_email_verified boolean not null default false,
    user_role int not null,
    user_active boolean not null default true,
    user_reset_code varchar,
    user_register_code varchar,
    user_reset_code_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,

    CONSTRAINT users_role_pk FOREIGN KEY (user_role) REFERENCES roles (role_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

create table games (
    game_id SERIAL NOT NULL CONSTRAINT games_pkey PRIMARY KEY,
    game_name varchar not null,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP

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
    profile_rating_id SERIAL NOT NULL CONSTRAINT profiles_pkey PRIMARY KEY,
    profile_rating_value int,
    profile_rating_profile_id int,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,

    CONSTRAINT pr_fk_profile FOREIGN KEY (profile_rating_profile_id) REFERENCES profile_id
    ON DELETE CASCADE ON UPDATE CASCADE
);


create table profile_comments (
    profile_comment_id SERIAL NOT NULL CONSTRAINT profiles_pkey PRIMARY KEY,
    profile_comment_text varchar not null,
    profile_comment_profile_id int,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,

    CONSTRAINT pc_fk_profile FOREIGN KEY (profile_comment_profile_id) REFERENCES profile_id
    ON DELETE CASCADE ON UPDATE CASCADE
);