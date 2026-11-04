USE steam_analysis;
GO

SELECT COUNT(*) AS total_filas FROM dbo.steam_games_clean;

SELECT COUNT(metacritic_score) AS con_metacritic FROM dbo.steam_games_clean;

SELECT COUNT(*) AS con_500_resenas FROM dbo.steam_games_clean WHERE total_reviews >= 500;

SELECT name, release_date, release_year, owners_min, owners_max,
       metacritic_score, total_reviews, pct_positive
FROM dbo.steam_games_clean
WHERE name = 'The Witcher 3: Wild Hunt';