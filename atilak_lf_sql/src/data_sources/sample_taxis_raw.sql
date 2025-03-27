-- The 'data_sources' folder contains definitions for all data sources
-- used by the pipeline. Keeping them separate provides a clear overview
-- of the data used and allows for easy swapping of sources during development.

CREATE LIVE VIEW taxis_raw_atilak_test_lakeflow AS
SELECT *
FROM samples.nyctaxi.trips
LIMIT 10;
