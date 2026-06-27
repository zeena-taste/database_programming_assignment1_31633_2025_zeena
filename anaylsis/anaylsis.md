# Analysis

The dataset consists of **20 students** enrolled across **8 courses**, with each student taking **two courses**. Common Table Expressions (CTEs) were used to calculate student and course averages, making complex queries more readable and easier to manage.

The analysis showed that the **overall average grade** was **83.85**. Out of the 20 students, **10 students performed above the overall average**, while the remaining **10 students scored below it**, indicating a fairly balanced distribution of academic performance.

Course-level analysis revealed that **Artificial Intelligence** had the highest average grade (**91.2**), making it the best-performing course in the dataset. In contrast, **Operating Systems** had the lowest average grade (**77.8**), suggesting that students found it comparatively more challenging.

Window functions such as **`ROW_NUMBER()`**, **`RANK()`**, and **`DENSE_RANK()`** were used to rank students based on their grades, while functions like **`LAG()`**, **`LEAD()`**, **`NTILE()`**, **`PERCENT_RANK()`**, and **`CUME_DIST()`** provided additional insights into grade distribution, relative performance, and student ranking.

Overall, the combination of CTEs and window functions demonstrated how advanced SQL features can simplify complex data analysis, improve query readability, and provide meaningful insights into student performance and course outcomes.