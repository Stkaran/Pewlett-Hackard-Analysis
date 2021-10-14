# Pewlett-Hackard-Analysis

## Purpose 
The primary goal of this analysis was to help our client, Pewlett-Hackard, help prepare for the future by taking a look at their current employees and assessing who will be retiring in the next few years and what positions they will be leaving open. This data will hopefully help inform the company on which areas they will need to focus on for hiring and if they need to even more steps like mentorship programs to both help stagnate the retirement rate and increase the number of potential upper mangement employees.

## Results 
As you will see below there are quite a few alarming trends with the current employee base.

![](https://github.com/Stkaran/Pewlett-Hackard-Analysis/blob/main/Deliverable_1.png)

    * Out of over 80,000 employees there are only 2 people in mangement postions.
    * The majority of enigeers and staff fall under the senior position meaning over 
      half of the employees will be eligible for retirement in the next few years.

![](https://github.com/Stkaran/Pewlett-Hackard-Analysis/blob/main/mentor_count.png)

    * Above is the count of the current number senior employees eligible to work part-time
      as mentors.
    * With this number, there would be around 17 employees assigned to each mentor.
    * While program would help, it wouldn't come close making up for all the lost 
      senior employees.

## Summary
While it can be challenging depending on the job market, non-senior positions will be able to be filled as long as the company provides the proper the incentives. The senior management positions are the ones that will always be harder to fill. For these, I would suggest trying to cultivate these talents as soon as possible, starting at the entry level positions. This method, way down the line, will prevent a mad dash for senior positons. You could go about finding candidates by alerting the search ages in birth_date to focus on trying the keep millennials long term.
        
     WHERE (birth_date BETWEEN '1980-01-01' AND '1995-12-31')
