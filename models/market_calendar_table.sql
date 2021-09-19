select 
      csv.row_index
    , csv.row_date
    , csv.row_year
    , csv.row_month
    , csv.row_yearmonth
    , csv.row_day
    , csv.row_week_index
    , csv.row_day_index
    , csv.is_weekend
    , csv.is_market_holiday
    , csv.is_eq_weekly_exp
    , csv.eq_weekly_exp_cumulative
    , csv.is_eq_monthly_exp
    , csv.is_eq_quarterly_exp
    , csv.is_vix_weekly_exp
    , csv.vix_weekly_exp_cumulative
    , csv.is_vix_monthly_exp
    , csv.is_vix_quarterly_exp
from {{ ref('market_calendar_csv') }} csv