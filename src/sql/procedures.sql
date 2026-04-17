-- Auto-generated: procedures — procedures v2435
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_2435 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_2435_name
    ON procedures_—_procedures_2435(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_2435_created
    ON procedures_—_procedures_2435(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_2435 (name, counter)
VALUES
    ('item_0', 'val_0_2435'),
    ('item_1', 'val_1_2435'),
    ('item_2', 'val_2_2435'),
    ('item_3', 'val_3_2435'),
    ('item_4', 'val_4_2435'),
    ('item_5', 'val_5_2435'),
    ('item_6', 'val_6_2435'),
    ('item_7', 'val_7_2435'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_2435_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_2435
GROUP BY name
ORDER BY total DESC;
