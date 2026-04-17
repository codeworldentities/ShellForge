-- Auto-generated: index optimization v1894
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_1894 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_1894_name
    ON index_optimization_1894(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_1894_created
    ON index_optimization_1894(created_at DESC);

-- Seed data
INSERT INTO index_optimization_1894 (name, is_active)
VALUES
    ('item_0', 'val_0_1894'),
    ('item_1', 'val_1_1894'),
    ('item_2', 'val_2_1894'),
    ('item_3', 'val_3_1894'),
    ('item_4', 'val_4_1894'),
    ('item_5', 'val_5_1894'),
    ('item_6', 'val_6_1894'),
    ('item_7', 'val_7_1894'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_1894_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_1894
GROUP BY name
ORDER BY total DESC;
