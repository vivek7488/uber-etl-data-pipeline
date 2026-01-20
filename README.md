📌 Project Overview

This project demonstrates an end-to-end data engineering pipeline built on Uber trip data.
The pipeline ingests raw trip data, applies transformations using a star schema, stores analytics-ready data in Google BigQuery, and enables business insights through KPI queries and dashboards.

The focus of this project is on data modeling, scalable ETL design, and analytics enablement using cloud-native tools.


🏗 Architecture Overview

Data Flow:

Raw CSV Data
     ↓
Python ETL
     ↓
Amazon S3
     ↓
Cloud Data Warehouse
     ↓
Analytics Table
     ↓
KPI Queries / BI Dashboards



🛠 Tech Stack

Programming Language: Python

Cloud Platform: Amazon Web Services (AWS)

Amazon S3

Amazon Redshift / Amazon Athena

Data Modeling: Star Schema (Fact & Dimension Tables)

Analytics: SQL

Visualization: BI tools (Amazon QuickSight)


📂 Project Structure

uber-etl-pipeline/
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


