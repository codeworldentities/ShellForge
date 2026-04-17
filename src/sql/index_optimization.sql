-- Auto-generated: index optimization v631
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_631 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_631_name
    ON index_optimization_631(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_631_created
    ON index_optimization_631(created_at DESC);

-- Seed data
INSERT INTO index_optimization_631 (name, is_active)
VALUES
    ('item_0', 'val_0_631'),
    ('item_1', 'val_1_631'),
    ('item_2', 'val_2_631'),
    ('item_3', 'val_3_631');

-- View
CREATE OR REPLACE VIEW v_index_optimization_631_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_631
GROUP BY name
ORDER BY total DESC;
