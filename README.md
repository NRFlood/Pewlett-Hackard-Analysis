# Pewlett Hackard Analysis using SQL

## Overview of Pewlett Hackard Analysis

The purpose of this analysis was to assist Bobby in creating a report that would enable his managers at Pewlett Hackard prepare for the “silver tsunami” as many current employees reach retirement age.  To complete this project we used SQL to help sort through employee information to determine the number of employees that may soon be retiring based on their age and organized them by title.  We also generated a list of employees that could potentially shift into a mentorship role as they near retirement in order to help younger employees take over the positions they will be retiring from.  

## Pewlett Hackard Results

- Pewlett Hackard has over 72K employees nearing retirement, which represents nearly 24% of their workforce (72,458 / 300,024 = 24%).
- Of the 72K employees nearing retirement, 70% of them are in Senior level or Management positions.
    ![](https://github.com/NRFlood/Pewlett-Hackard-Analysis/blob/main/Retiring_by_title.PNG)  
- They have 1,549 employees eligible for the mentorship program based on the criteria of being born in 1965. 
- Only 46% of the employees eligible for the mentorship program are in Senior level positions, while nearly 70% of those retiring are in Senior level positions.

## Pewlett Hackard Summary 

As the "silver tsunami" begins to take effect Pewlett Hackard will need to replace 24% of their workforce in a short window of time.  Assuming that the 72K employees born from 1952 to 1955 all retire at the same age, Hewlett Packard will be replacing an average of 18K a year for four years in a row.  The mentorship program is a great idea but based on their current mentorship parameters (those born in 1965) they only have 1,549 employees eligible to be mentors, and only 46% of this group are in Senior level positions that might qualify them to mentor someone.  The remaining 54% are in lower-level positions that might not qualify them to mentor new employees.  

One additional query that could help would be to expand the date parameters for the mentorship program to include additional years.  This would likely create a larger list of people that could be mentors to new employees.  Another possible query might be to look at employees who were in 1965 or later and filter it for Senior level positions only.  This would allow you to expand the mentorship pool to those employees that might have valuable experience, regardless of their age.  Both of those queries might highlight further the appropriate steps Hewlett Packard needs to take, because under their current parameters they do not appear to have enough mentors for the all of the new employees that will be needed to replace the people retiring under the "silver tsunami."
