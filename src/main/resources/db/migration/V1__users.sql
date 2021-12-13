CREATE TABLE IF NOT EXISTS users
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    phone VARCHAR(12) NOT NULL,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(64) NOT NULL,
    enabled BOOLEAN DEFAULT TRUE,
    cards_created INTEGER DEFAULT 0,
    cards_updated INTEGER DEFAULT 0,
    account_creation_date TIMESTAMP WITH TIME ZONE,
    last_online_date TIMESTAMP WITH TIME ZONE,

    UNIQUE(phone)
)