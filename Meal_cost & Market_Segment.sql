with hotelsR as (
select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020]) 
select * from hotelsR 
left join dbo.Market_Segment
on hotelsR.market_segment = Market_Segment.market_segment
left join dbo.[meal cost]
on [meal cost].meal = hotelsR.meal