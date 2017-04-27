# select primary type & description
SELECT `Primary Type`, Description
FROM Chicago_Crime_Data_Warehouse.Crime_Description;
# assaults
SELECT * 
FROM Chicago_Crime_Data_Warehouse.Crime_Description 
WHERE `Primary Type` = "ASSAULT";
# aggravated assualts with a handgun
SELECT * 
FROM Chicago_Crime_Data_Warehouse.Crime_Description 
WHERE `Primary Type` = "ASSAULT" AND Description = "AGGRAVATED: HANDGUN";
# assault or battery
SELECT * 
FROM Chicago_Crime_Data_Warehouse.Crime_Description 
WHERE `Primary Type` = "ASSAULT" OR `Primary Type` = "Battery";
# select primary count and count categories
SELECT `Primary Type`, COUNT(`Primary Type`)
FROM Chicago_Crime_Data_Warehouse.Crime_Description
GROUP BY `Primary Type`;
# time queries
SELECT Year, Month, Day
FROM Chicago_Crime_Data_Warehouse.Time;
# weekday
SELECT Year, Month, Day
FROM Chicago_Crime_Data_Warehouse.Time
WHERE Weekday = "Saturday";
# select and sort
SELECT Year, Month, Day, Hour, Minute
FROM Chicago_Crime_Data_Warehouse.Time
ORDER BY Month, Day, Hour, Minute;
