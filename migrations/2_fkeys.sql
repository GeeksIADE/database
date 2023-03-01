--! Many to many tables

create table users_games (
    users_games_id SERIAL NOT NULL CONSTRAINT users_games_pkey PRIMARY KEY,
    users_id int REFERENCES users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    games_id int REFERENCES games (game_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

-- Add users_games description
comment on column users_games.users_id is 'The user''s uuid';
comment on column users_games.users_id is 'The game''s uuid';
comment on column users_games.users_id is 'Creation date';
comment on column users_games.users_id is 'Last updated date';