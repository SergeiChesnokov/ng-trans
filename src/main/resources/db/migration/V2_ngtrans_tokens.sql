CREATE TABLE IF NOT EXISTS ngtrans_tokens
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    token VARCHAR(4096) NOT NULL UNIQUE,
    user_id BIGINT REFERENCES users(id),
)