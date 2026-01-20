**🚕 Uber ETL Pipeline – AWS Data Engineering Project**

**🧠 Introduction**

This repository demonstrates an end-to-end ETL pipeline built for Uber trip data using AWS services.
It ingests raw data, transforms it into analytics-ready models, and generates key business insights through KPI queries.

This project reflects real-world data engineering workflows used in analytics, cloud data platforms, and BI.

**📌 Project Overview**

The goal of this project is to:

✔ Design a scalable ETL pipeline using AWS

✔ Model data using a star schema

✔ Generate analytics-ready tables

✔ Calculate business KPIs for decision support

✔ Enable BI visualization using cloud tools

**🏗 Architecture**

Below is the ETL flow used in this project:

Flow Details:

    Extract raw Uber CSV data

    Transform & model data into fact and dimension tables

    Load to cloud data warehouse (Redshift / Athena)

    Create analytics and KPI layers for reporting

**📁 Project Structure**

    uber-etl-pipeline/
     ├── assets/
     │   └── uber_etl_pipeline.png
     ├── data/
     │   └── uber_trips.csv
     ├── sql/
     │   ├── analytics_table.sql
     │   └── kpi_queries.sql
     ├── notebooks/
     │   └── etl_transformation.ipynb
     ├── README.md


**🛠 Usage**

1. Clone the repository
   
        git clone https://github.com/your-username/uber-etl-pipeline.git
   
        cd uber-etl-pipeline

3. AWS Setup

    Create an Amazon S3 bucket

    Configure Redshift or Athena

    Upload uber_trips.csv to S3

4. Run ETL

   Run Python Jupyter notebooks to build fact and dimension tables

Run the SQL in sql/ to build analytics and KPI layers

**📊 KPIs & Metrics**

This project calculates key business metrics including:

✔ Total trips

✔ Total revenue

✔ Average fare per trip

✔ Revenue per trip

✔ Trips by payment type

✔ Peak hours

✔ Daily trip trends

✔ Average tip percentage

✔ Revenue by passenger count


These KPIs are defined in the sql/kpi_queries.sql file.

**⚙️ AWS Components Used**

  Amazon S3 — Data lake for raw CSV

  Amazon Athena — Cloud analytics engine

  SQL — Analytics & KPI computation

  BI Tools — QuickSight

**📌 Installation & Prerequisites**

To run this project locally you need:

✔ Python 3.x
✔ AWS CLI configured
✔ Boto3 / AWS SDK
✔ SQL client for Redshift / Athena

Install dependencies:

   pip install -r requirements.txt

**🤝 Contributing**

Contributions are welcome! To contribute:

✔ Fork the repository
✔ Create a feature branch
