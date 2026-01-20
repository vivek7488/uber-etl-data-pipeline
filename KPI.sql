SELECT
  COUNT(DISTINCT trip_id) AS total_trips
FROM `vivek.uber_data_engineering_yt.tbl_analytics`;

SELECT
  ROUND(SUM(total_amount), 2) AS total_revenue
FROM `vivek.uber_data_engineering_yt.tbl_analytics`;

SELECT
  ROUND(AVG(total_amount), 2) AS avg_fare_per_trip
FROM `vivek.uber_data_engineering_yt.tbl_analytics`;

SELECT
  ROUND(SUM(total_amount) / COUNT(DISTINCT trip_id), 2) AS revenue_per_trip
FROM `vivek.uber_data_engineering_yt.tbl_analytics`;

SELECT
  payment_type_name,
  COUNT(DISTINCT trip_id) AS trips,
  ROUND(SUM(total_amount), 2) AS revenue
FROM `vivek.uber_data_engineering_yt.tbl_analytics`
GROUP BY payment_type_name
ORDER BY revenue DESC;

SELECT
  ROUND(AVG(trip_distance), 2) AS avg_trip_distance
FROM `vivek.uber_data_engineering_yt.tbl_analytics`;

SELECT
  EXTRACT(HOUR FROM tpep_pickup_datetime) AS pickup_hour,
  COUNT(DISTINCT trip_id) AS total_trips
FROM `vivek.uber_data_engineering_yt.tbl_analytics`
GROUP BY pickup_hour
ORDER BY total_trips DESC;

SELECT
  DATE(tpep_pickup_datetime) AS trip_date,
  COUNT(DISTINCT trip_id) AS total_trips,
  ROUND(SUM(total_amount), 2) AS daily_revenue
FROM `vivek.uber_data_engineering_yt.tbl_analytics`
GROUP BY trip_date
ORDER BY trip_date;

SELECT
  ROUND(
    AVG(SAFE_DIVIDE(tip_amount, fare_amount)) * 100,
    2
  ) AS avg_tip_percentage
FROM `vivek.uber_data_engineering_yt.tbl_analytics`
WHERE fare_amount > 0;

SELECT
  passenger_count,
  COUNT(DISTINCT trip_id) AS trips,
  ROUND(SUM(total_amount), 2) AS revenue
FROM `vivek.uber_data_engineering_yt.tbl_analytics`
GROUP BY passenger_count
ORDER BY passenger_count;
