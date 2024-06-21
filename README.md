## Social Tok : Connecting People 
A Case study to analysis emerging social media site data to help them progress with huge incoming data.

Social Tok was founded by two engineering Students, one  from London and the other from India. They left in 2008 and both met in London to start their business. They started Social Tok because they saw an opportunity to  build on the foundation that their previous company started by creating a new platform where  content took center stage. Social Tok emphasizes content by keeping all users anonymous, only tracking user reactions on every piece of content. There are over 100 ways that users can  react to content, spanning beyond the traditional reactions of likes, dislikes, and comments.  This ensures that trending content, as opposed to individual users, is at the forefront of user  feeds.   Over the past 5 years, Social Tok has reached over 500 million active users each month.  They have scaled quicker than anticipated and need the help of an advisory firm to oversee  their scaling process effectively.   Due to their rapid growth and digital nature of their core product, the amount of data that they  create, collect and must analyze is huge. Every day over 100,000 pieces of content, ranging from text, images, videos and GIFs are posted. All of this data is highly unstructured and requires extremely sophisticated and expensive technology to manage and maintain. Out of the 250 people working at Social Tok, 200 of them are technical staff working on maintaining this highly complex technology.  Up until this point, they have not relied on any third-party firms to help them get to where they are. However there are 2 main reasons why they are now looking at bringing in external expertise: 
1)	They want to learn data best practices from a large corporation. Due to the nature of their business, they have a massive amount of data so they are keen on understanding how the world's biggest companies manage the challenges of big data.  
2)	They want to know the key insight of data to make data-driven decision

## Getting Started
To replicate the analysis or explore the dataset further, follow these steps:
1. Clone the repository to your local machine.
2. python 3.0 is installed.
3. jupyter notebook in installed.
4. we will use Panda Library to clean the data set.
5. Ensure you have a SQL environment set up to execute queries.
6. Execute the SQL queries provided in the repository to analyze the data and derive insights.
7. Customize the analysis or queries as needed for your specific objectives.
   
## Process
# 1. Requirement Gathering 
we have provided few datastes and a data model the first step is to use this data model to identify which datasets will be required to answer your business question - which is to to figure out the top 5 categories with the largest popularity.

# Data Model
![Untitled](https://github.com/soumyaj9/Social-Media-case-study/assets/65082310/33f46bb9-394f-458f-b230-6c680f68bd8e)
The brief carefully it states that the client wanted to see “An analysis of their content categories showing the top 5 categories with the largest popularity”.
As explained in the data model, popularity is quantified by the “Score” given to each reaction type.
We therefore need data showing the content ID, category, content type, reaction type, and reaction score.
So, to figure out popularity, we’ll have to add up which content categories have the largest score.

# 2. Data Cleaning 
- we will be using Pandas Library to load, manipulate and expoert the data to database 
- removing rows that have values which are missing.
- changing the data type of some values within a column.
- removing columns which are not relevant to this task.
- Think about how each column might be relevant to the business question you’re investigating. If you can’t think of why a column may be useful, it may not be worth including it.

# 3. Data Modelling 
- Create a final data set by merging your three tables together. by using join Method of Pandas library we joined the 3 tables and expoted to CSV
- then we loaded the CSV to postegres RDBMS tool pgAdmin4 to write SQL query for data analysis
- we investigated below business requirement
     1. An analysis of their content categories showing the top 5 categories with the largest popularity
        
        Method 1 
        ![Untitled](https://github.com/soumyaj9/Social-Media-case-study/assets/65082310/4e951168-a120-457c-b9aa-41e9b1366e1b)
        
        Method 2
        ![Untitled](https://github.com/soumyaj9/Social-Media-case-study/assets/65082310/5f303724-4638-4a1c-bc24-c775ca00a513)
  2. Max count of reaction for Month
        ![Untitled](https://github.com/soumyaj9/Social-Media-case-study/assets/65082310/01825ca2-9255-4ca4-8611-ce04988f9d5b)

## Conclusion
Through this project, we aim to provide valuable insights into top popular Caterogies selection, customer
preferences, and other factors campaign decision based on most reacted theme. By analyzing the dataset
and addressing the key questions, we hope to assist stakeholders in making informed decisions
and optimizing their sales strategies.
Feel free to explore the repository and contribute to further analysis or enhancements!
   
## Notice:
All customer names and data used in this project are computer-generated using AI and random
functions. They do not represent real data associated with Amazon or any other entity. This
project is solely for learning and educational purposes, and any resemblance to actual persons,
businesses, or events is purely coincidental.
