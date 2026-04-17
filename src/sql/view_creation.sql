-- Auto-generated: view creation v6775
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_6775 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_6775_name
    ON view_creation_6775(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_6775_created
    ON view_creation_6775(created_at DESC);

-- Seed data
INSERT INTO view_creation_6775 (name, counter)
VALUES
    ('item_0', 'val_0_6775'),
    ('item_1', 'val_1_6775');

-- View
CREATE OR REPLACE VIEW v_view_creation_6775_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_6775
GROUP BY name
ORDER BY total DESC;
