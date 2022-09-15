select  wmc.country_name, w.year, w.happiness_ranking, wmc.number_deaths
from world_happiness W INNER JOIN world_mortality_by_covid wmc ON
wmc.country_code=w.country_code AND w.year=wmc.year
GROUP BY w.year,wmc.country_name, w.happiness_ranking, wmc.number_deaths



select wmc.country_code, wmc.year, wmc.number_deaths
from public.world_mortality_by_covid wmc
order by wmc.number_deaths desc


select  wmc.country_name, w.year, w.happiness_ranking, wmc.number_deaths
from world_happiness w INNER JOIN world_mortality_by_covid wmc ON
wmc.country_code=w.country_code AND w.year=wmc.year AND w.year=2020
order by wmc.number_deaths DESC
LIMIT 10

select  wmc.country_name, w.year, w.happiness_ranking, wmc.number_deaths
from world_happiness w INNER JOIN world_mortality_by_covid wmc ON
wmc.country_code=w.country_code AND w.year=wmc.year AND w.year=2021
order by wmc.number_deaths DESC
LIMIT 10

select  wm.country_name, w.year, w.happiness_ranking, wm.all_cause_death_count
from world_happiness w INNER JOIN world_mortality wm ON
wm.country_code=w.country_code AND w.year=wm.year AND w.year=2021
order by wm.all_cause_death_count DESC
LIMIT 10

select  wm.country_name, w.year, w.happiness_ranking, wm.all_cause_death_count
from world_happiness w INNER JOIN world_mortality wm ON
wm.country_code=w.country_code AND w.year=wm.year AND w.year=2020
order by wm.all_cause_death_count ASC
LIMIT 10


select * 
from public.world_happiness
where country_code= 'CHN'


select  po.country_name , w.year, w.happiness_ranking, po.population
from world_happiness w INNER JOIN population po ON
po.country_code=w.country_code AND w.year=po.year 
order by population DESC

select *
from public.country





