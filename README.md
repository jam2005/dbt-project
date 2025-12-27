Getting Started
Prerequisites

dbt Core installed (version 1.0 or higher recommended)
Access to a supported data warehouse (e.g., Snowflake, BigQuery, Redshift, Postgres)
Profiles configured in ~/.dbt/profiles.yml

Installation

Clone the repository:Bashgit clone https://github.com/jam2005/dbt-project.git
cd dbt-project
Install dependencies (if any packages are defined in packages.yml):Bashdbt deps

Running the Project

Build models:Bashdbt run
Run tests:Bashdbt test
Generate and view documentation:Bashdbt docs generate
dbt docs serve

Project Structure

models/: SQL transformation models (staging, intermediate, marts)
seeds/: CSV files for static data
snapshots/: Snapshot tables for slowly changing dimensions
tests/: Data quality tests
macros/: Reusable Jinja macros
analyses/: Compiled SQL for ad-hoc queries
dbt_project.yml: Project configuration
packages.yml: External dbt packages

Resources

Official dbt documentation: docs.getdbt.com
Community support: community.getdbt.com
Discourse forum: discourse.getdbt.com
