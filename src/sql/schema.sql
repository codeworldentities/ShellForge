-- Auto-generated: schema — database schema definition v6667
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_6667 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_6667_name
    ON schema_—_database_schema_definition_6667(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_6667_created
    ON schema_—_database_schema_definition_6667(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_6667 (name, description)
VALUES
    ('item_0', 'val_0_6667'),
    ('item_1', 'val_1_6667'),
    ('item_2', 'val_2_6667'),
    ('item_3', 'val_3_6667'),
    ('item_4', 'val_4_6667'),
    ('item_5', 'val_5_6667'),
    ('item_6', 'val_6_6667'),
    ('item_7', 'val_7_6667'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_6667_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_6667
GROUP BY name
ORDER BY total DESC;
