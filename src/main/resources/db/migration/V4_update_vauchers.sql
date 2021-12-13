CREATE TABLE IF NOT EXISTS update_vouchers
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    old_card_id BIGINT REFERENCES cards(id),
    new_card_id BIGINT REFERENCES cards(id),
    user_owner BIGINT REFERENCES users(id),
)
