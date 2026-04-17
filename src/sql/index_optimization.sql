-- Auto-generated: index optimization v8055
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_8055 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_8055_name
    ON index_optimization_8055(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_8055_created
    ON index_optimization_8055(created_at DESC);

-- Seed data
INSERT INTO index_optimization_8055 (name, description)
VALUES
    ('item_0', 'val_0_8055'),
    ('item_1', 'val_1_8055'),
    ('item_2', 'val_2_8055'),
    ('item_3', 'val_3_8055'),
    ('item_4', 'val_4_8055'),
    ('item_5', 'val_5_8055'),
    ('item_6', 'val_6_8055'),
    ('item_7', 'val_7_8055'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_8055_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_8055
GROUP BY name
ORDER BY total DESC;
