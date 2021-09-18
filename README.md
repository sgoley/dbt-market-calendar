[![Apache License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) ![dbt logo and version](https://img.shields.io/static/v1?logo=dbt&label=dbt-version&message=0.20.x&color=orange)
# Market Calendar

This package models calendar data as relevant to the US trading markets (NYSE, NASDAQ, etc.) and their holidays. 

> The Market Calendar dbt package is compatible with BigQuery, Redshift, and Snowflake.

## Definitions

* `is_weekend` - numeric boolean value indicating whether dates were US Market Weekends
* `is_market_holiday` - numeric boolean value indicating whether dates were US Market Holidays (Work in Progress)
* `is_eq_weekly_exp` - numeric boolean value indicating whether date was a normal equity weekly expiration day
* `eq_weekly_exp_cumulative` - numeric incrementing value indicating an index of the equity weekly expiration within that month
* `is_eq_monthly_exp` - numeric boolean value indicating whether date was a normal equity monthly expiration day
* `is_eq_quarterly_exp` - numeric boolean value indicating whether date was a normal equity quarterly expiration day
* `is_vix_weekly_exp` - numeric boolean value indicating whether date was a normal volatility index weekly expiration day
* `vix_weekly_exp_cumulative` - numeric incrementing value indicating an index of the volatility weekly expiration within that month
* `is_vix_monthly_exp` - numeric boolean value indicating whether date was a normal volatility index monthly expiration day
* `is_vix_quarterly_exp` - numeric boolean value indicating whether date was a normal volatility index quarterly expiration day

## Installation Instructions
Check [dbt Hub](https://hub.getdbt.com/) for the latest installation instructions, or [read the dbt docs](https://docs.getdbt.com/docs/package-management) for more information on installing packages.

Include in your `packages.yml`

```yaml
  - git: "https://github.com/sgoley/dbt-market-calendar.git"
    revision: 0.0.1
```

### Changing the Build Schema
By default this package will build the Calendar final models with a schema titled (<target_schema> + `_calendar`) in your target database. If this is not where you would like your modeled Calendar data to be written to, add the following configuration to **your** `dbt_project.yml` file:

```yml
# dbt_project.yml

models:
  market-calendar:
    +schema: my_new_schema_name # leave blank for just the target_schema
```
