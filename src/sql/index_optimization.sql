-- Auto-generated: index optimization v7499
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_7499 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    score DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_7499_name
    ON index_optimization_7499(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_7499_created
    ON index_optimization_7499(created_at DESC);

-- Seed data
INSERT INTO index_optimization_7499 (name, status)
VALUES
    ('item_0', 'val_0_7499'),
    ('item_1', 'val_1_7499'),
    ('item_2', 'val_2_7499'),
    ('item_3', 'val_3_7499'),
    ('item_4', 'val_4_7499'),
    ('item_5', 'val_5_7499'),
    ('item_6', 'val_6_7499'),
    ('item_7', 'val_7_7499'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_7499_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_7499
GROUP BY name
ORDER BY total DESC;
