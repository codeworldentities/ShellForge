-- Auto-generated: view creation v9823
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_9823 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_9823_name
    ON view_creation_9823(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_9823_created
    ON view_creation_9823(created_at DESC);

-- Seed data
INSERT INTO view_creation_9823 (name, email)
VALUES
    ('item_0', 'val_0_9823'),
    ('item_1', 'val_1_9823'),
    ('item_2', 'val_2_9823'),
    ('item_3', 'val_3_9823'),
    ('item_4', 'val_4_9823'),
    ('item_5', 'val_5_9823'),
    ('item_6', 'val_6_9823'),
    ('item_7', 'val_7_9823'),

-- View
CREATE OR REPLACE VIEW v_view_creation_9823_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_9823
GROUP BY name
ORDER BY total DESC;
