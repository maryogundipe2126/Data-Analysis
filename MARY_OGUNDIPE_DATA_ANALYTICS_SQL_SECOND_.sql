MARY_OGUNDIPE_DATA_ANALYTICS_SQL_SECOND_ASSIGNMENT.

-- Q1 the country with the highest and lowest apperance --
WITH all_world_cup as (
	SELECT
	'WC 2002' AS worldcup_year,
	team
FROM
	fifa_2002
UNION ALL
SELECT
	'WC 2006' AS worldcup_year,
	team
FROM
	fifa_2006
UNION ALL
SELECT
	'WC 2010' AS worldcup_year,
	team
FROM
	fifa_2010
UNION ALL
SELECT
	'WC 2014' AS worldcup_year,
	team
FROM
	fifa_2014
UNION ALL
SELECT
	'WC 2018' AS worldcup_year,
	team
FROM
	fifa_2018
	)
	
	
SELECT 
	MIN(team) AS lowest_country_app,
	MAX(team) AS highest_country_app
FROM
	all_world_cup;


    -- Q2 the country with the highest and lowest game_played --

    WITH all_world_cup as (
	SELECT
	team,
	game_played,
	points
FROM
	fifa_2002
UNION ALL
SELECT
	team,
	game_played,
	points
FROM
	fifa_2006
UNION ALL
SELECT
	team,
	game_played,
	points
FROM
	fifa_2010
UNION ALL
SELECT
	team,
	game_played,
	points
FROM
	fifa_2014
UNION ALL
SELECT
	team,
	game_played,
	points
FROM
	fifa_2018
	)
		
		
SELECT
	DISTINCT
	team,
	MIN(game_played)AS lowest_game_played ,
	MAX(game_played) AS highest_game_played
FROM
	all_world_cup
WHERE
	game_played IN ( 3,7)
GROUP BY
	team;


-- Q3 the country with the hihest and lowest game won --

WITH all_world_cup as (
	SELECT
	team,
	win
FROM
	fifa_2002
UNION ALL
SELECT
	team,
	win
FROM
	fifa_2006
UNION ALL
SELECT
	team,
	win
FROM
	fifa_2010
UNION ALL
SELECT
	team,
	win
FROM
	fifa_2014
UNION ALL
SELECT
	team,
	win
FROM
	fifa_2018
	)
		
		
SELECT
	DISTINCT
	team,
	MIN(win)AS lowest_game_won ,
	MAX(win) AS highest_game_won
FROM
	all_world_cup
WHERE
	win IN ( 0, 7)
GROUP BY
	team;


-- Q4 the country with the highest and lowest game lost --

WITH all_world_cup as (
	SELECT
	team,
	loss
FROM
	fifa_2002
UNION ALL
SELECT
	team,
	loss
FROM
	fifa_2006
UNION ALL
SELECT
	team,
	loss
FROM
	fifa_2010
UNION ALL
SELECT
	team,
	loss
FROM
	fifa_2014
UNION ALL
SELECT
	team,
	loss
FROM
	fifa_2018
	)
		
		
SELECT
	DISTINCT
	team,
	MIN(loss)AS lowest_game_lost ,
	MAX(loss) AS highest_game_lost
	
FROM
	all_world_cup
WHERE
	loss IN ( 0, 3)
GROUP BY
	team;

	
	-- Q5 country  with the highest and lowest goalsfor --


	WITH all_world_cup as (
	SELECT
	team,
	goalsfor
FROM
	fifa_2002
UNION ALL
SELECT
	team,
	goalsfor
FROM
	fifa_2006
UNION ALL
SELECT
	team,
	goalsfor
FROM
	fifa_2010
UNION ALL
SELECT
	team,
	goalsfor
FROM
	fifa_2014
UNION ALL
SELECT
	team,
	goalsfor
FROM
	fifa_2018
	)
		
		
SELECT
	DISTINCT
	team,
	MIN(goalsfor)AS lowest_goals_for ,
	MAX(goalsfor) AS highest_goals_for
	
FROM
	all_world_cup
WHERE
	goalsfor IN ( 0, 18)
GROUP BY
	team;


-- Q6 country with the lowest and highest goals against --

WITH all_world_cup as (
	SELECT
	team,
	goalsagainst
FROM
	fifa_2002
UNION ALL
SELECT
	team,
	goalsagainst
FROM
	fifa_2006
UNION ALL
SELECT
	team,
	goalsagainst
FROM
	fifa_2010
UNION ALL
SELECT
	team,
	goalsagainst
FROM
	fifa_2014
UNION ALL
SELECT
	team,
	goalsagainst
FROM
	fifa_2018
	)
		
		
SELECT
	DISTINCT
	team,
	MIN(goalsagainst)AS lowest_goals_against ,
	MAX(goalsagainst) AS highest_goals_against
	
FROM
	all_world_cup
WHERE
	goalsagainst IN ( 0, 14)
GROUP BY
	team;

-- Q7  country with the lowest a nd highest goal difference --

WITH all_world_cup as (
	SELECT
	team,
	goalsdifference
FROM
	fifa_2002
UNION ALL
SELECT
	team,
	goalsdifference
FROM
	fifa_2006
UNION ALL
SELECT
	team,
	goalsdifference
FROM
	fifa_2010
UNION ALL
SELECT
	team,
	goalsdifference
FROM
	fifa_2014
UNION ALL
SELECT
	team,
	goalsdifference
FROM
	fifa_2018
	)
		
		
SELECT
	DISTINCT
	team,
	MIN(goalsdifference)AS lowest_goals_difference ,
	MAX(goalsdifference) AS highest_goals_difference
	
FROM
	all_world_cup
WHERE
	goalsdifference IN ( -12, 14)
GROUP BY
	team;

-- Q8 country with the highest and lowest points --

WITH all_world_cup as (
	SELECT
	team,
	points
FROM
	fifa_2002
UNION ALL
SELECT
	team,
	points
FROM
	fifa_2006
UNION ALL
SELECT
	team,
	points
FROM
	fifa_2010
UNION ALL
SELECT
	team,
	points
FROM
	fifa_2014
UNION ALL
SELECT
	team,
	points
FROM
	fifa_2018
	)
		
		
SELECT
	DISTINCT
	team,
	MIN(points)AS lowest_points ,
	MAX(points) AS highest_points
	
FROM
	all_world_cup
WHERE
	points IN ( 0, 21)
GROUP BY
	team;







	



