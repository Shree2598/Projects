with hotelsR as (
select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020]) 
select 
arrival_date_year,
hotel,
    round(SUM((cast(stays_in_week_nights as int) + cast(stays_in_weekend_nights as int)) * cast(adr as float)),2) as revenue 
from hotelsR
GROUP BY arrival_date_year,hotel