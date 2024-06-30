select 
	candidate_id 
	from 
		candidates 
	where 
		skill in ('Python','Tableau','PostgreSQL') 
	group by 
		candidate_id -- groups candidate by candidate_id
	having 
		count(skill)>=3 -- here it will filter candidate having all the 3 skills
	order by 
		candidate_id;

-- requirement is to fetch candidate having matching skills of Data Science (Python, Tableau,PostgreSQL)