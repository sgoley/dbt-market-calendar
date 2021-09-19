select 
      csv.Row
    , csv.Date
    , csv.Year
    , csv.Month
    , csv.YearMonth
    , csv.Day
    , csv.Week_Index
    , csv.Day_Index
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