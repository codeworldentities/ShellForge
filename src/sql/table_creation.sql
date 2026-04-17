-- Auto-generated: table creation v2322
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_2322 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_2322_name
    ON table_creation_2322(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_2322_created
    ON table_creation_2322(created_at DESC);

-- Seed data
INSERT INTO table_creation_2322 (name, email)
VALUES
    ('item_0', 'val_0_2322'),
    ('item_1', 'val_1_2322'),
    ('item_2', 'val_2_2322'),
    ('item_3', 'val_3_2322'),
    ('item_4', 'val_4_2322'),
    ('item_5', 'val_5_2322'),
    ('item_6', 'val_6_2322'),
    ('item_7', 'val_7_2322'),

-- View
CREATE OR REPLACE VIEW v_table_creation_2322_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_2322
GROUP BY name
ORDER BY total DESC;
