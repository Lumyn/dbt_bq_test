
{{ config(materialized='table') }}

select * from `main_dataset.raw_data_odds`
