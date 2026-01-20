🚕 Uber ETL Pipeline – End-to-End Data Engineering Project (AWS)
📌 Project Overview

This project demonstrates an end-to-end data engineering pipeline built using Uber trip data.
The pipeline ingests raw trip data, performs transformations using a star schema, stores analytics-ready data in a cloud data warehouse, and enables business insights through KPI queries and dashboards.

The project emphasizes ETL design, data modeling, cloud architecture, and analytics enablement.

🏗 ETL Pipeline Architecture

High-level flow:

Raw CSV Data → Python ETL → Amazon S3 → Data Warehouse → Analytics & KPIs

🛠 Tech Stack

Programming Language: Python

Cloud Platform: Amazon Web Services (AWS)

Amazon S3 (Data Lake)

Amazon Redshift / Amazon Athena (Analytics)

Data Modeling: Star Schema

Analytics: SQL

Visualization: Amazon QuickSight / Looker Studio

Version Control: Git & GitHub

📂 Project Structure
uber-etl-pipeline/
│
├── assets/
│   └── uber_etl_pipeline.png
│
├── data/
│   └── uber_trips.csv
│
├── sql/
│   ├── analytics_table.sql
│   └── kpi_queries.sql
│
├── notebooks/
│   └── etl_transformation.ipynb
│
├── scripts/
│   └── etl_pipeline.py
│
└── README.md

📊 Data Model

The project follows a star schema optimized for analytical queries.

Fact Table

fact_table

trip_id

vendor_id

datetime_id

passenger_count_id

trip_distance_id

rate_code_id

pickup_location_id

dropoff_location_id

payment_type_id

fare and revenue metrics

Dimension Tables

datetime_dim

passenger_count_dim

trip_distance_dim

rate_code_dim

pickup_location_dim

dropoff_location_dim

payment_type_dim

⚙️ ETL Pipeline Details
1️⃣ Extract

Raw Uber trip data ingested from CSV files.

2️⃣ Transform

Data cleaning and normalization

Type casting and validation

Star schema modeling (fact & dimensions)

Analytics table creation using SQL joins

3️⃣ Load

Raw data stored in Amazon S3

Transformed data loaded into Redshift / Athena

Analytics-ready tables created for BI usage

📈 Analytics Layer

An analytics table (tbl_analytics) is created by joining the fact table with all dimension tables.

This table enables:

Fast analytical queries

KPI calculations

Time-based and revenue-based insights

All analytics SQL logic is maintained in the sql/ directory.

📌 Key Business KPIs

The following KPIs are derived from the analytics table:

Total Trips

Total Revenue

Average Fare per Trip

Revenue per Trip

Trips & Revenue by Payment Type

Average Trip Distance

Peak Pickup Hours

Daily Trips & Revenue Trends

Average Tip Percentage

Revenue by Passenger Count

🚀 How to Run the Project
1️⃣ Clone the Repository
git clone https://github.com/your-username/uber-etl-pipeline.git
cd uber-etl-pipeline

2️⃣ AWS Setup

Create an Amazon S3 bucket for raw data

Configure Amazon Redshift or Athena

Upload raw CSV data to S3

3️⃣ Run ETL

Execute Python scripts or notebooks to generate fact and dimension tables

Run SQL scripts from the sql/ folder to create analytics and KPI layers
