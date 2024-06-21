--Creating date structure for merged data set csv
CREATE TABLE Merge (
	Content_ID VARCHAR(50),
	Category varchar(50),
	ContentType  varchar(50),
	Datetime date,
	ReactionType varchar(50),
	Type varchar(50),
	Sentiment varchar(50),
	Score int

);

SELECT * FROM Merge;


--Q. An analysis of their content categories showing the top 5 categories with the largest popularity
--Approach - the popularity will be caclculated based on the total score for the Categories 
-- METHOD 1 : Using Group By
SELECT 
	UPPER(Category),
	SUM (Score)
FROM Merge
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

--METHOD 2 : Using CTE and Window Function 
With CTE1 AS 
(
	SELECT 
		UPPER(Category),
		SUM (Score),
		Rank() OVER (PARTITION BY UPPER(Category) ORDER BY SUM (Score)DESC) as rn
	FROM Merge
	GROUP BY 1
)	
SELECT * 
FROM CTE1 
WHERE rn = 1
LIMIT 5;
