-- Auto-generated: view creation v9154
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_9154 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_9154_name
    ON view_creation_9154(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_9154_created
    ON view_creation_9154(created_at DESC);

-- Seed data
INSERT INTO view_creation_9154 (name, priority)
VALUES
    ('item_0', 'val_0_9154'),
    ('item_1', 'val_1_9154'),
    ('item_2', 'val_2_9154'),
    ('item_3', 'val_3_9154'),
    ('item_4', 'val_4_9154'),
    ('item_5', 'val_5_9154'),
    ('item_6', 'val_6_9154'),
    ('item_7', 'val_7_9154');

-- View
CREATE OR REPLACE VIEW v_view_creation_9154_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_9154
GROUP BY name
ORDER BY total DESC;
