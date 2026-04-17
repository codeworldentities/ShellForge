-- Auto-generated: index optimization v4207
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_4207 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    email VARCHAR(255),
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_4207_name
    ON index_optimization_4207(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_4207_created
    ON index_optimization_4207(created_at DESC);

-- Seed data
INSERT INTO index_optimization_4207 (name, counter)
VALUES
    ('item_0', 'val_0_4207'),
    ('item_1', 'val_1_4207'),
    ('item_2', 'val_2_4207'),
    ('item_3', 'val_3_4207'),
    ('item_4', 'val_4_4207'),
    ('item_5', 'val_5_4207'),
    ('item_6', 'val_6_4207'),
    ('item_7', 'val_7_4207'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_4207_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_4207
GROUP BY name
ORDER BY total DESC;
