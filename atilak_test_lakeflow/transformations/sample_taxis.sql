-- The 'transformations' folder contains all transformations
-- applied in this pipeline.
-- Documentation: https://docs.databricks.com/delta-live-tables/sql-ref.html

CREATE OR REFRESH MATERIALIZED VIEW sample_taxis_atilak_test_lakeflow AS
SELECT
    DATE(tpep_pickup_datetime) AS pickup_date,
    COUNT(*) AS number_of_trips
FROM LIVE.taxis_raw_atilak_test_lakeflow
GROUP BY DATE(tpep_pickup_datetime);
