with
    table1 as (
        select the_date as game, avg(odd_home) as avg_home, avg(odd_exte) as avg_exte,
        from {{ ref("raw_table") }}
        group by the_date
    )

select game, avg_home, 1 / avg_home as proba_home, avg_exte, 1 / avg_exte as proba_exte,
from table1