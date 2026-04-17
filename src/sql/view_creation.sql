-- Auto-generated: view creation v4182
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_4182 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_4182_name
    ON view_creation_4182(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_4182_created
    ON view_creation_4182(created_at DESC);

-- Seed data
INSERT INTO view_creation_4182 (name, is_active)
VALUES
    ('item_0', 'val_0_4182'),
    ('item_1', 'val_1_4182');

-- View
CREATE OR REPLACE VIEW v_view_creation_4182_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_4182
GROUP BY name
ORDER BY total DESC;
