-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS url(
    id SERIAL PRIMARY KEY,
    alias TEXT NOT NULL UNIQUE,
    url TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_alias on url(alias);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP INDEX IF EXISTS idx_alias;
DROP TABLE IF EXISTS url;
-- +goose StatementEnd
