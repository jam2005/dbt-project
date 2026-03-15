# Data Pipeline 3 – dbt Analytics Engineering Project

[![dbt Version](https://img.shields.io/badge/dbt-1.0+-orange?logo=dbt&logoColor=white)](https://docs.getdbt.com/docs/introduction)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) <!-- add a LICENSE file if you want -->

Modern data transformation pipeline built with **dbt (data build tool)**.  
This project follows dbt best practices to transform raw data into trusted, business-ready analytics models.

## 🎯 Project Overview

This repository contains a complete **dbt Core** project implementing:

- **Staging layer** → clean, lightly transformed source-aligned views
- **Marts layer** → business-oriented, consumption-ready tables
- Data quality testing
- Reusable macros
- Support for static reference data (seeds)
- Slowly changing dimension tracking (snapshots)
- Ad-hoc analysis SQL

Project name: **data_pipeline3**  
Target warehouse: **Snowflake** (configurable for others)

## 📋 Table of Contents

- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [Project Structure](#-project-structure)
- [Development Workflow](#-development-workflow)
- [Testing & Documentation](#-testing--documentation)
- [Configuration Notes](#-configuration-notes)
- [Contributing](#-contributing)
- [License](#-license)
- [Resources](#-resources)

## ⚙️ Prerequisites

- **dbt Core** ≥ 1.0 (strongly recommended: latest stable version)
- Access to a supported data warehouse:
  - Snowflake (primary target)
  - BigQuery, Redshift, PostgreSQL, Databricks, etc. (with profile adjustments)
- A configured `~/.dbt/profiles.yml` with valid credentials for your target warehouse

## 🚀 Installation

1. Clone the repository

   ```bash
   git clone https://github.com/jam2005/dbt-project.git
   cd dbt-project

   dbt deps
⚡ Quick Start
Bash
   # Build all models
dbt run

# Run tests
dbt test

# Generate & serve documentation (highly recommended!)
dbt docs generate
dbt docs serve
# → open http://localhost:8080

## 📂 Project Structure

```
dbt-project/
├── models/
│   ├── staging/      ← source-aligned cleaned views
│   └── marts/        ← business entities & KPIs (final tables)
├── seeds/            ← static CSV reference data
├── snapshots/        ← type-2 SCD tracking
├── macros/           ← reusable Jinja SQL logic
├── tests/            ← singular & generic data tests
├── analyses/         ← ad-hoc / exploratory SQL (not materialized)
├── dbt_project.yml   ← main project configuration
├── packages.yml      ← external dbt packages (if any)
└── profiles.yml.example ← template – do NOT commit real credentials!
```

🛠 Development Workflow
Recommended pattern:

dbt run --select staging → build staging layer first
dbt run --select marts → build final marts
dbt test --select state:modified+ → test only changed models
Add new tests, macros, or documentation as you go
Use {{ ref('model_name') }} and {{ source('source_name', 'table_name') }}

✅ Testing & Documentation

Tests live next to models or in /tests
Generic tests: schema.yml files
Singular tests: custom SQL in /tests

Documentation:

Add description: to every model, column, source
Run dbt docs generate frequently
Use dbt docs serve during development

⚙️ Configuration Notes

Models in staging → materialized as views
Models in marts → materialized as tables
Snowflake warehouse: dbt_wh (override via profiles or --vars)

To use another warehouse:

Update profiles.yml
Adjust any warehouse-specific macros/configs

👥 Contributing
Contributions are welcome!

Fork the repository
Create a feature branch (git checkout -b feature/amazing-feature)
Commit your changes (git commit -m 'Add amazing feature')
Push to the branch (git push origin feature/amazing-feature)
Open a Pull Request

Please follow dbt style guide and add tests for new models.

📄 License
MIT License – see the LICENSE file for details.
🌐 Resources

Official dbt Documentation
dbt Learn
dbt Community Discourse
dbt Style Guide
