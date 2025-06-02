create database linkedin_analyst;
use linkedin_analyst;

set sql_safe_updates=0;
ALTER TABLE linkedin_data1 ADD COLUMN postdatenew DATE;
UPDATE linkedin_data1 SET postdatenew = STR_TO_DATE(postdate, '%Y-%m-%d');
ALTER TABLE linkedin_data1 DROP COLUMN PostDate;
SELECT * FROM linkedin_data1;


## Top 5 posts by engagement rate
SELECT PostDatenew, PostDescription, PostTopic, Engagement_Rate
FROM linkedin_data1
ORDER BY Engagement_Rate DESC
LIMIT 5;

## Average engagement rate by post topic

SELECT PostTopic, AVG(Engagement_Rate) AS AvgEngagement
FROM linkedin_data1
GROUP BY PostTopic
ORDER BY AvgEngagement DESC;

## Total views per day of week
SELECT "Day Of Week", SUM(Views) AS TotalViews
FROM linkedin_data1
GROUP BY "Day Of Week"
ORDER BY TotalViews DESC;

## Most used post topics
SELECT PostTopic, COUNT(*) AS TotalPosts
FROM linkedin_data1
GROUP BY PostTopic
ORDER BY TotalPosts DESC;


## monthly average engagement rate 
Select DATE_FORMAT(PostDatenew, '%Y-%m') AS Month, 
       AVG(Engagement_Rate) AS AvgEngagement
FROM linkedin_data1
GROUP BY Month
ORDER BY Month;


## Engagement rate by topic
SELECT PostTopic, AVG(Engagement_Rate) AS AvgRate
FROM linkedin_data1
GROUP BY PostTopic
ORDER BY AvgRate DESC;

## Highest engagement posts
SELECT PostDescription, Engagement_Rate
FROM linkedin_data1
ORDER BY Engagement_Rate DESC
LIMIT 5;

## Average Comments by Topic
SELECT PostTopic, AVG(Comments) AS AvgComments
FROM linkedin_data1
GROUP BY PostTopic
ORDER BY AvgComments DESC;

## Top 5 Posts by Views
SELECT PostDescription, Views, PostDatenew
FROM linkedin_data1
ORDER BY Views DESC
LIMIT 5;

## Virality Score (Custom metric)
SELECT 
  PostDescription,
  Reactions + Comments + Reposts AS ViralityScore
FROM linkedin_data1
ORDER BY ViralityScore DESC
LIMIT 5;

## Post Length vs. Engagement
SELECT PostLength, AVG(Engagement_Rate) AS AvgEngagement
FROM linkedin_data1
GROUP BY PostLength
ORDER BY PostLength;