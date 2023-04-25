{{ config(materialized='table') }}

with raw_table as (

select 
int64_field_0 as game_id,
game_date as the_date,
odd_home,
odd_exte

from `main_dataset`.raw_data_odds

)

select * from raw_table