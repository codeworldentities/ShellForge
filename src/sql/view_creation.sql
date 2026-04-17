-- Auto-generated: view creation v6884
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_6884 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_6884_name
    ON view_creation_6884(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_6884_created
    ON view_creation_6884(created_at DESC);

-- Seed data
INSERT INTO view_creation_6884 (name, counter)
VALUES
    ('item_0', 'val_0_6884'),
    ('item_1', 'val_1_6884'),
    ('item_2', 'val_2_6884'),
    ('item_3', 'val_3_6884'),
    ('item_4', 'val_4_6884'),
    ('item_5', 'val_5_6884'),
    ('item_6', 'val_6_6884'),
    ('item_7', 'val_7_6884'),

-- View
CREATE OR REPLACE VIEW v_view_creation_6884_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_6884
GROUP BY name
ORDER BY total DESC;
