select
    game,
    avg_home,
    avg_exte,
    proba_home,
    proba_exte,
    avg_home + avg_exte as total_avg,
    proba_home + proba_exte as total_proba
from {{ ref("stag_1") }}