-- Auto-generated: views — views v5214
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_5214 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_5214_name
    ON views_—_views_5214(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_5214_created
    ON views_—_views_5214(created_at DESC);

-- Seed data
INSERT INTO views_—_views_5214 (name, is_active)
VALUES
    ('item_0', 'val_0_5214'),
    ('item_1', 'val_1_5214'),
    ('item_2', 'val_2_5214');

-- View
CREATE OR REPLACE VIEW v_views_—_views_5214_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_5214
GROUP BY name
ORDER BY total DESC;
