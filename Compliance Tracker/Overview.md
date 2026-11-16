## Overview

I created a Compliance Tracker database using DBeaver and SQL, based around regulatory compliance within the construction industry. I chose this area because it relates directly to my current role and gave me a realistic scenario for designing the database and its reporting requirements.

The database is designed to store project, duty holder and compliance review information in one place, making it easier to track compliance activities across multiple projects and identify review items requiring attention.

The database consists of three main tables:

- Projects
- Duty Holders
- Compliance Reviews

The tables are connected using primary and foreign keys to create relationships between projects, organisations, duty holders and compliance reviews.

As part of the project, I:

- Designed the relational database structure
- Created synthetic test data
- Wrote SQL queries to retrieve and analyse compliance information
- Used SQL functions and joins
- Created a stored procedure
- Tested and troubleshot queries within DBeaver

One of the main challenges was debugging small SQL syntax errors, particularly misplaced commas and typos. I also encountered an issue with `DELIMITER` statements in DBeaver when creating the stored procedure. Removing the delimiter statements allowed the procedure to execute correctly.

Although the underlying data structure felt familiar from working extensively with Excel, this project helped me understand how relational databases can provide a more structured and scalable way of storing, connecting and querying compliance information.