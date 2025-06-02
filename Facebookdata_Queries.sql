USE MEDIA_ANALYSIS;

SELECT * FROM FACEBOOK_DATA;

ALTER TABLE Facebook_Data
RENAME COLUMN `ï»¿Ad_Name` TO Add_Name;

-- Total Cost
SELECT ROUND(SUM(Cost), 2) AS Total_Cost FROM Facebook_Data;

-- Total Reach
SELECT SUM(Reach) AS Total_Reach FROM Facebook_Data;

-- Total Impressions
SELECT SUM(Impressions) AS Total_Impressions FROM Facebook_Data;

-- Total Link Clicks
SELECT SUM(LinkClicks) AS Total_Link_Clicks FROM Facebook_Data WHERE LinkClicks IS NOT NULL;

-- CTR (Click-Through Rate)
SELECT 
  ROUND(SUM(LinkClicks) * 100.0 / NULLIF(SUM(Impressions), 0), 2) AS CTR_Percentage
FROM Facebook_Data
WHERE LinkClicks IS NOT NULL AND Impressions > 0;

-- Cost per Click (CPC)
SELECT 
  ROUND(SUM(Cost) / NULLIF(SUM(LinkClicks), 0), 2) AS CPC
FROM Facebook_Data
WHERE LinkClicks IS NOT NULL;


-- Cost per Lead (CPL)
SELECT 
  ROUND(SUM(Cost) / NULLIF(SUM(CASE WHEN `CPL_(Cost per Lead)` IS NOT NULL THEN 1 ELSE 0 END), 0), 2) AS CPL
FROM Facebook_Data;


-- Page Likes
SELECT SUM(Page_Likes) AS Total_Page_Likes FROM Facebook_Data WHERE Page_Likes IS NOT NULL;

-- Post Reactions
SELECT SUM(Post_Reactions) AS Total_Reactions FROM Facebook_Data WHERE Post_Reactions IS NOT NULL;

-- Post Comments
SELECT SUM(Post_Comments) AS Total_Comments FROM Facebook_Data WHERE Post_Comments IS NOT NULL;

-- Ad Performance by Demographic
SELECT 
  Age_Group, 
  Gender, 
  AVG(Cost_per_People_Reached) AS Avg_Cost_Per_Reach,
  AVG(`CPC_(Cost per Click)`) AS Avg_CPC
FROM Facebook_Data
WHERE `CPC_(Cost per Click)` IS NOT NULL
GROUP BY Age_Group, Gender
ORDER BY Avg_Cost_Per_Reach ASC;



-- Top Performing Campaigns
SELECT 
  Campaign_Name, 
  SUM(LinkClicks) AS Total_Clicks, 
  AVG(`CPA_(Cost per Action)`) AS Avg_CPA
FROM Facebook_Data
WHERE LinkClicks IS NOT NULL AND `CPA_(Cost per Action)` IS NOT NULL
GROUP BY Campaign_Name
ORDER BY Total_Clicks DESC
LIMIT 5;


-- Low Performance Ads
SELECT 
  Add_Name, 
  Cost, 
  LinkClicks, 
  Post_Reactions
FROM Facebook_Data
WHERE Cost > 10 AND (LinkClicks IS NULL OR LinkClicks = 0)
ORDER BY Cost DESC;


-- Peak Performance Dates
SELECT 
  ReportDate, 
  SUM(Impressions) AS Total_Impressions, 
  SUM(Post_Reactions) AS Total_Reactions
FROM Facebook_Data
GROUP BY ReportDate
ORDER BY Total_Impressions DESC
LIMIT 10;

-- Ad Sets Efficiency
SELECT 
  AdSet_Name, 
  ROUND(SUM(Cost), 2) AS Total_Cost, 
  SUM(LinkClicks) AS Total_Clicks, 
  ROUND(AVG(`CPA_(Cost per Action)`), 2) AS Avg_CPA
FROM Facebook_Data
WHERE LinkClicks IS NOT NULL
GROUP BY AdSet_Name
ORDER BY Total_Clicks DESC
LIMIT 10;



-- Return on Investment (ROI) Estimation
SELECT 
  Campaign_Name,
  ROUND(SUM(Cost), 2) AS Total_Cost,
  SUM(LinkClicks) AS Total_Clicks,
  ROUND(SUM(LinkClicks) / NULLIF(SUM(Cost), 0), 2) AS ROI_Clicks_per_Rupee
FROM Facebook_Data
WHERE LinkClicks IS NOT NULL
GROUP BY Campaign_Name
ORDER BY ROI_Clicks_per_Rupee DESC;






