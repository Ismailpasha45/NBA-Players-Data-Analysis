USE nba_database;
-- 1. Top 5 Highest-Scoring Players
SELECT player_name, AVG(pts) AS avg_points
FROM players_stats
GROUP BY player_name
ORDER BY avg_points DESC
LIMIT 5;

-- 2. Top 5 Teams by Average Player Points per Game
SELECT team_abbreviation, AVG(pts) AS avg_team_points
FROM players_stats
GROUP BY team_abbreviation
ORDER BY avg_team_points DESC
LIMIT 5;

TRUNCATE TABLE players_stats;


-- 3. Players with Most Assists in a Season
SELECT player_name, season, ast AS max_assists
FROM players_stats AS p
WHERE (season, ast) IN (
    SELECT season, MAX(ast) 
    FROM players_stats 
    GROUP BY season
)
ORDER BY max_assists DESC
LIMIT 5;

-- 4. Top 5 Players with Highest Rebounds per Game
SELECT player_name, AVG(reb) AS avg_rebounds
FROM players_stats
GROUP BY player_name
ORDER BY avg_rebounds DESC
LIMIT 5;

-- 5. Team Comparison Based on Shooting Efficiency
SELECT team_abbreviation, AVG(ts_pct) AS avg_true_shooting
FROM players_stats
GROUP BY team_abbreviation
ORDER BY avg_true_shooting DESC;

-- 6. Player Performance Trends Over Seasons
SELECT player_name, season, AVG(pts) AS avg_points, AVG(ast) AS avg_assists, AVG(reb) AS avg_rebounds
FROM players_stats
GROUP BY player_name, season
ORDER BY player_name, season;

-- 7. Finding the Most Efficient Players (Usage vs. True Shooting Percentage)
SELECT player_name, AVG(usg_pct) AS avg_usage, AVG(ts_pct) AS avg_true_shooting
FROM players_stats
GROUP BY player_name
ORDER BY avg_true_shooting DESC, avg_usage DESC
LIMIT 10;
