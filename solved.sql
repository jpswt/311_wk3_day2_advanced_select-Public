SELECT 
state,
SUM(user_id)
FROM usersAddress
group by state;

SELECT
substr(phone1,1,3) as areaCode,
count(*) as total
FROM usersContact
group by areaCode
ORDER BY total DESC;

SELECT 
	min(u.first_name), 
    ua.county, 
    count(*) as users 
FROM users u
JOIN usersAddress ua
	ON u.id = ua.user_id 
GROUP by county 
HAVING users > 10
ORDER BY users DESC;





