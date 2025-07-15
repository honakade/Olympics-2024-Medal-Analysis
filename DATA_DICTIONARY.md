
# Data Dictionary

| Column Name  | Data Type | Description                     | Notes / Constraints            |
|--------------|-----------|---------------------------------|--------------------------------|
| Rank         | Integer   | Country’s rank by total medals  | Lower number = higher rank     |
| Country      | String    | Full country name               | No abbreviations               |
| Country_Code | String    | 3-letter country code           | ISO Alpha-3 standard           |
| Gold         | Integer   | Number of gold medals won       | Non-negative (≥ 0)             |
| Silver       | Integer   | Number of silver medals won     | Non-negative (≥ 0)             |
| Bronze       | Integer   | Number of bronze medals won     | Non-negative (≥ 0)             |
| Total        | Integer   | Total medals earned             | Sum of Gold + Silver + Bronze  |
