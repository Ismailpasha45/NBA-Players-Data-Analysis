# NBA Players Data Analysis

## Project Overview
This project analyzes NBA player statistics, including player performance, team comparisons, and trends over multiple seasons. The dataset is processed, cleaned, stored in an SQL database, and visualized using Power BI.

## Dataset
- **Source:** Kaggle ([NBA Players Data](https://www.kaggle.com/datasets/justinas/nba-players-data))
- **Format:** CSV file with player statistics across multiple seasons
- **Key Fields:** Player name, team, points, assists, rebounds, shooting percentages, and more.

## Steps & Implementation

### 1. Data Preprocessing
- Load the dataset using Pandas.
- Handle missing values and normalize fields.
- Cleaned data is saved for further analysis.

### 2. Exploratory Data Analysis (EDA)
- Identify trends in player performance (points, assists, rebounds, efficiency).
- Compare player statistics by position and across seasons.
- Use visualizations like bar charts ans Column charts.

### 3. Team Analysis
- Analyze team performance based on player statistics.
- Identify top-performing teams.

### 4. Player Comparisons
- Compare two high-scoring players (e.g., Luka Dončić vs. Kevin Durant) based on multiple statistics.
- Use bar charts to visualize differences in scoring, assists, and efficiency.

### 5. SQL Database Integration
- Create an MYSQL database (`nba_database.db`).
- Store cleaned player statistics in a `players_stats` table.
- Perform SQL queries to extract insights:
  - Top 5 highest-scoring players.
  - Top 5 teams based on player performance.
  - Assist leaders across seasons.

### 6. Power BI Dashboard
- **Connect Power BI to MYSQL Database.**
- **Create Visualizations:**
  - Top scorers (Bar Chart)
  - Assist leaders (Table)
  - Player performance trends (Line Chart)
- **Design an interactive dashboard** with key filters and team comparisons.

## Technologies Used
- **Python (Pandas, Matplotlib, Seaborn, MYSQL)**
- **SQL (MYSQL database management, queries)**
- **Power BI (Visualizations, dashboards)**

## Deliverables
- **Power BI Report (`DASHBOARD.pbix`)**
- **Python Code ('NBA-Players-Data-Analysis{ EDA}.ipynb'/Jupyter Notebook)**
- **MYSQL Database (`nba_database.db`)**
- **README Documentation**

## How to Run the Project
1. Clone the repository and install dependencies (`pandas`, `matplotlib`, `seaborn`, `MYSQL`).
2. Run the Python script to clean data and generate insights.
3. Open Power BI and load `nba_players.db` to explore visualizations.

## Author
Project developed by **[Ismail Pasha]**. Contributions and suggestions are welcome!

---

For detailed insights, refer to the Power BI dashboard and SQL queries included in the project files.

