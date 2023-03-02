CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TYPE user_role AS ENUM ('admin', 'user');
CREATE CAST (character varying AS user_role) WITH INOUT AS ASSIGNMENT;

create table users (
    user_id SERIAL NOT NULL CONSTRAINT users_pkey PRIMARY KEY,
    user_first_name varchar not null,
    user_last_name varchar,
    user_location varchar,
    user_name varchar not null unique,
    user_email varchar not null unique,
    user_password varchar not null,
    user_email_verified boolean not null default false,
    user_role user_role not null,
    user_active boolean not null default true,
    user_reset_code varchar,
    user_register_code varchar,
    user_reset_code_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP

);

-- Add users descriptions
comment on column users.user_id is 'The user''s id';
comment on column users.user_name is 'The user''s username';
comment on column users.user_email is 'The user''s email';
comment on column users.user_password is 'The user''s password';
comment on column users.user_email_verified is 'If user''s email is verified (default as false)';
comment on column users.user_role is 'The user''s role (user or admin)';
comment on column users.user_active is 'If user is active (default as true)';
comment on column users.created_at is 'Creation date';
comment on column users.updated_at is 'Last updated date';

create table games (
    game_id SERIAL NOT NULL CONSTRAINT games_pkey PRIMARY KEY,
    game_steam_id int null,
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

    CONSTRAINT profile_fk_user FOREIGN KEY (profile_users_id) REFERENCES user_id
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