--! Many to many tables

create table users_games (
    users_games_id SERIAL NOT NULL CONSTRAINT users_games_pkey PRIMARY KEY,
    users_id int REFERENCES users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    games_id int REFERENCES games (game_id) ON UPDATE CASCADE ON DELETE CASCADE,
    game_steam_id int null,
    game_rank varchar null,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

-- Add users_games description
comment on column users_games.users_id is 'The user''s uuid';
comment on column users_games.users_id is 'The game''s uuid';
comment on column users_games.users_id is 'Creation date';
comment on column users_games.users_id is 'Last updated date';

create table users_roles (
    users_roles_id SERIAL NOT NULL CONSTRAINT users_roles_pkey PRIMARY KEY,
    users_id int REFERENCES users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    roles_id int REFERENCES roles (role_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);