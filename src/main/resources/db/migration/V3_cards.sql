CREATE TABLE IF NOT EXISTS cards
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    image_url VARCHAR(50),
    description VARCHAR(500),
    x_coordinates INTEGER NOT NULL,
    y_coordinates INTEGER NOT NULL,
    update_available BIT NOT NULL,

    UNIQUE (name, x_coordinates, y_coordinates)
)