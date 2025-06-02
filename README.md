# 📊 Facebook Media Analytics Dashboard

This project delivers an end-to-end Facebook Media Analytics solution using SQL, Excel, Tableau, and Power BI. It showcases campaign performance, audience insights, and key engagement metrics through interactive dashboards. Designed to help marketing teams drive data-informed decisions and optimize their advertising strategies.

---

## 📁 Project Files

| File | Description |
|------|-------------|
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Facebook%20Analytics.xlsx" target="_blank">Facebook Analytics.xlsx</a> | Raw Facebook data exported for pre-processing, used as input for Tableau and Power BI. |
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Facebookdata_Queries.sql" target="_blank">Facebookdata_Queries.sql</a> | SQL scripts used to calculate KPIs like CPC, CTR, CPL, ROI, and extract key insights. |
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Facebook%20Analytics%20Dashboard.twbx" target="_blank">Facebook Analytics Dashboard.twbx</a> | Tableau packaged workbook featuring visual analysis of reach, impressions, reactions, and post engagement. |
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Facebook_final_Dashboard_pbix.pbix" target="_blank">Facebook_final_Dashboard_pbix.pbix</a> | Power BI dashboard with interactive charts on demographics, campaign ROI, clicks, and more. |

> 🔗 Replace the file links with actual URLs after uploading to GitHub or cloud storage.

---

## 🧠 Key Contributions

- **Data Cleaning & Standardization**: Handled encoding issues (e.g., renamed malformed column names), removed nulls, and transformed raw export into analysis-ready format using Excel and SQL.
- **Advanced SQL Analysis**: Developed custom SQL queries to extract KPIs such as CTR, CPC, CPL, CPA, ROI per campaign, and performance breakdown by age, gender, and device type.
- **Dashboard Development**:
  - **Power BI**: Built an interactive dashboard for marketing leadership with KPIs, demographic filters, ROI comparison, and heatmaps for ad schedule optimization.
  - **Tableau**: Designed story-driven dashboards for campaign performance, content engagement, and audience behavior.
- **Decision-Making Impact**:
  - Identified **low-performing ad sets** with high cost but no conversions.
  - Pinpointed **peak performance dates and demographics** for targeting.
  - Improved **budget allocation recommendations** based on ROI and cost-per-click insights.

---

## 📈 Key Metrics Tracked

| Metric | Description |
|--------|-------------|
| **Reach** | Number of unique users who saw the ad. |
| **Impressions** | Total number of times ads were shown. |
| **Link Clicks** | Number of users who clicked on the ad link. |
| **CTR (Click-Through Rate)** | Percentage of impressions that resulted in clicks. |
| **CPC (Cost per Click)** | Cost spent divided by number of clicks. |
| **CPA (Cost per Action)** | Cost per lead, like signup or purchase. |
| **CPL (Cost per Lead)** | Cost per contact acquisition. |
| **Page Likes & Reactions** | Engagement-based brand affinity signals. |
| **Demographics (Age, Gender)** | Segmentation insights for targeting efficiency. |
| **ROI (Clicks per Rupee)** | Performance effectiveness for cost spent. |

---

## 📸 Dashboard Screenshots

### 📊 Tableau Dashboard

- Reach and Engagement Trends  
- Content Type Performance (Image, Video, Link)  
- Audience Behavior by Date  

<img src="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Screenshot%202025-06-02%20184314.png" alt="Tableau Dashboard" width="600"/>

---

### 📉 Power BI Dashboard

- KPI Summary Cards: CTR, CPC, CPL, ROI  
- Gender & Age Group Performance  
- Campaign Leaderboard and Ad Set Efficiency  

<img src="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Screenshot%202025-06-02%20184615.png" alt="Power BI Dashboard" width="600"/>

---

## 🧰 Tech Stack

- **SQL (MySQL/PostgreSQL)** – complex query handling and metric calculations  
- **Excel** – pre-processing, cleaning, and validating raw Facebook data  
- **Tableau** – high-level engagement visualizations  
- **Power BI** – in-depth interactive KPI and demographic dashboards

---

## 🚀 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Facebook%20Analytics.zip


---
---
# 📈 LinkedIn Media Analytics Dashboard

This project provides a 360° view of LinkedIn performance using Excel, SQL, Tableau, and Power BI. It tracks and visualizes metrics like engagement rate, views, post topics, virality, and content effectiveness—empowering content teams to make informed decisions for professional branding and social engagement.

---

## 🔍 Project Summary

- **Data Sources**: LinkedIn export data processed via Excel.
- **Back-end Analysis**: SQL used to clean, transform, and generate key insights (engagement, views, virality).
- **Front-end Visualization**: Interactive dashboards built using Tableau and Power BI.
- **Objective**: Identify top-performing content types, optimize post timing, and boost engagement strategy.

---

## 📁 Project Files

| File | Description |
|------|-------------|
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Linkedin%20Analytics.xlsx" target="_blank">Linkedin Analytics.xlsx</a> | Raw LinkedIn data file, used for preprocessing and feeding into dashboards. |
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/linkedin_final_query.sql" target="_blank">linkedin_final_query.sql</a> | SQL queries for extracting insights like top posts, engagement by topic, virality, and timing patterns. |
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Linkedin%20Analytics%20Dashboard.twbx" target="_blank">Linkedin Analytics Dashboard.twbx</a> | Tableau workbook to visualize metrics like post topic performance and engagement over time. |
| <a href="https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/LinkedIn%20Analytics%20Dashboard.pbix" target="_blank">LinkedIn Analytics Dashboard.pbix</a> | Power BI dashboard with filters and visuals on views, engagement, and virality scores. |

---

## 📊 Key Metrics Analyzed

| Metric | Description |
|--------|-------------|
| **Engagement Rate** | Measures the rate of interaction (reactions, comments, shares) per post. |
| **Views** | Total number of times posts were viewed. |
| **Comments & Reactions** | Indicators of audience interest and resonance. |
| **Virality Score** | Custom metric combining reactions, comments, and shares to rank post popularity. |
| **Post Topic** | Categories of content used to understand what themes perform best. |
| **Post Length** | Used to measure optimal text size for engagement. |
| **Time Patterns** | Engagement trends by day of week and month for posting strategy.

---

## 🧠 Key Contributions

- ✅ Cleaned and normalized LinkedIn data using Excel and SQL (`STR_TO_DATE`, drop columns, add derived date fields).
- ✅ Created SQL queries for:
  - Top 5 posts by **engagement rate** and **views**
  - Monthly **engagement trends**
  - Post topic frequency & impact
  - **Virality score** formula for custom ranking
- ✅ Built interactive **Power BI** visuals including:
  - Filters by topic, date, and post type
  - Engagement & view trend lines
  - Post leaderboard
- ✅ Developed **Tableau** dashboards:
  - Visual storytelling for professional content impact
  - Highlighted topic performance and time-based engagement patterns

---

## 📸 Dashboard Screenshots

### 📌 Tableau Dashboard  
- Engagement rate by post topic  
- Monthly trend chart  
- Virality-focused visuals  

<img src="https://your-link.com/screenshots/linkedin_tableau_dashboard.png" alt="LinkedIn Tableau Dashboard" width="600"/>

---

### 📌 Power BI Dashboard  
- Interactive engagement breakdown  
- Post type and performance filters  
- Views, comments, reactions leaderboard  

<img src="https://your-link.com/screenshots/linkedin_powerbi_dashboard.png" alt="LinkedIn Power BI Dashboard" width="600"/>

---

## 🛠 Tech Stack

- **SQL (MySQL)** – Querying, aggregations, calculated metrics  
- **Microsoft Excel** – Data cleaning and transformation  
- **Tableau** – Visual analytics and presentation dashboards  
- **Power BI** – Advanced interactive dashboards and filters

---

## 📌 Business Impact

- 📈 Identified top-performing **post topics** that generate highest engagement  
- 📆 Recommended **optimal posting days** for visibility and interaction  
- 🔁 Provided strategic insights into **content format and length effectiveness**  
- 🧲 Used custom **virality scoring** to assess impact of past posts and shape future strategy

---

## 🚀 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/MadanShetty818/Media_Anlytics-Facebook-LinkedIn-/blob/main/Linkedin%20Analytics.zip

