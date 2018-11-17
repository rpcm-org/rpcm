-- Users of RPCM server
CREATE TABLE users (
    id BIGINT UNSIGNED NOT NULL PRIMARY KEY, -- internal user id
    steam_id VARCHAR(50) NOT NULL UNIQUE KEY, -- hexadecimal steam id provided by FiveM
    license VARCHAR(50), -- license provided by FiveM (user can go from web)
    nickname VARCHAR(25) NOT NULL UNIQUE KEY -- user's nickname on rpcm server
);
