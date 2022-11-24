
# Project One - Analytics Engineering - Northwind Traders

This project exclusively focused on Analytics Engineering. In which a database named Northwind traders was used 
Microsoft creates the database to demonstrate the features of some of its products and for training and tutorial purposes. 

The database contains all the sales data for Northwind Traders, a fictitious specialty foods export-import company.

* Sales transactions between the company ( NW traders) and its customers.
* The purchase transactions between Northwind and its suppliers.

I used the MySQL version of the Northwind sample database. 

### Why Northwind Traders wanted analysis done?

Northwind traders want to modernize their data & reporting solutions & move away from on-prem.

* Better scalability
* Reduce load on operational systems
* Improved reporting speed
* Improved security

### How the requirement gathering was done?

* Define Business Process
* Conduct Data Profiling (Data Exploration)
* Create Bus Matric High-Level entities
* Create Naming Convention Document
* Create a conceptual model


### How is the Business process defined?

The analysis was done to answer four stakeholders' questions, as mentioned below.

***1. Sales Overview*** 

Overall sales report to understand better the customers, what is being sold, what sells the most, where and what
sells the least. Why Northwind Traders wanted analysis done

***2. Sales Agent Tracking***

To track sales and performance of each sales agent to adjust commissions, reward high achievers and empower low achievers.

***3. Product Inventory***

To better stock management, understand the current inventory levels, how to improve stock management, what 
the suppliers have, and how much is being purchased. This will allow us to understand stock management and potentially
broker better supplier deals.

***4. Customer Reporting***

Empower customers to understand their purchase orders, how much, and when they buy. Empowering them to make 
data-driven decisions and utilize the data to join their sales data.


## **Data Profiling**


The following are the existing **tables** in the OLTP system. 

+ **Customers:** Customers who buy food from Northwind 

+ **Employees:** who work at Northwind

+ **Orders:** Sales order transactions taking place between the customers & Northwind

+ **Order Details:** Order details for the orders placed by the customers

+ **Inventory transactions:** Tramsactopm details of each Inventory

+ **Products:** Contains current Northwind products that customers can purchase

+ **Shippers:** Ships orders from Northwind to customers

+ **Suppliers:** Supply Northwind with required items

+ **Invoices:** Invoice created for each other


### **Entity Relationship Diagram**

Based on the high level entities the following ERD diagram was created by using draw.io 

The following picture shows the ERD diagram 

##### **![Entity Relationship Diagram - Northwind Traders](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/blob/d2640d72658e5405ec0eaf955a7308b62e1a382d/snapshots/DABC%20NW-Conceptual.drawio.png)**


### **Data Flow Diagram**

A data flow diagram(DFD), also known as a context diagram, gives us the whole process of what we would be modeling, we can use this to understand quickly how data flows between the different entities. Please note there are various levels of the data flow diagram and as the level increases, it becomes more and more complicated. 

##### **![Data Flow Diagram - Northwind Traders](https://drive.google.com/file/d/1dhFsa2pbSaqv4hSZeYe-kKnrD0SUrsWY/view?usp=sharing)**

### **Data Warehouse Architechture**

The data is ingested into the data lake using a Big query. And the datasets as defined above were made.

The ingested data forms a ***Data Lake***. 

The data was processed in the following manner:

***Bigquery Datalake*** > ***Staging Layer*** > ***Dimensional Data Warehouse Layer*** > ***Staging Layer*** > ***Vizualization tool ( Metabase)***


### **Dimensional Modelling**

The following steps were followed for the dimensional modeling. 

    1. Select the business process

    2. Declare the grain

    3.  Identify the dimensions

    4. Identify the facts


### **Source to Target Mapping**

Source-to-target mapping allows us to understand where the data is coming from and what it will become once it lands at its destination. Because during one transfer of data, data transformation can happen, and we need to keep track of this transformation. The first transfer of data will be from Cloud SQL to Data lake. 

The next step is to map the source-to-target from staging to the data lake. The dim date dimension did not exist, and we created it manually by writing a Query in Bigquery.


## **Transformations using Data Build Tool (dbt)**

dbt is an essential tool for analytics engineers. It allows the engineer to do analytical transformation, enabling them to write select statements without having to write DDL statements.

And dbt_project contains all the information about the project. Different parts of your configuration files. It tells how to operate your project. 

***dbt_project :*** 
is a collection of  SQL and Yamal files that dbt uses to do the data transformation. 

+ ***Macros:*** These Are pieces of code you can reuse many times.

+ ***Jinja:*** Jinja is a templating language.

+ ***Models:*** The model files contain SQL files, and these SQL files are where the transformation happens. And we can create our models in a very granular way.

+ ***test:*** test is a type of assertion. Assertion allows you to test your assumptions about your data or SQL file. dbt provides two ways of testing 
    + Singular testing: is done by writing an SQL query that basically will return failing records. 
    + Generic testing: these are something that we can keep reusing over and over again. This can be something like a NOT NULL test or a uniqueness test.



### How was the data transformed in this project? 

The following steps were followed:

    1. The ERD diagrams were made based on high-level entities.
    2. Then, from the bigquery data lake, the staging tables were made using dbt, as shown in the link below.
    3. From the Staging Tables, transformations were done, and fact and dimension tables were made.
    4. From Facts and Dimensions, One big Table (OBT) was made.     



* **[Staging Tables](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/tree/main/models/staging)**  
* **[Facts & Dimension Tables](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/tree/main/models/warehouse)** 
* **[Analytics OBT](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/tree/main/models/analytics_obt)**

The above steps and tables depict how the data was transformed using dbt. The next step was making dashboards using Metabase.

The following **Dashboards** were made in grammarly 
***Dash One**

![Product vs Quantity Sold](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/blob/main/data/Metabase%20Dash1.png)

***Dash Two***

![Sales Overview by city and Sales Agent Tracking](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/blob/main/data/Metabase%20Dash%202.png)

***Dash Three***


![Product Inventory](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/blob/main/data/Metabase%20Dash%203.png)

A few more Dashes were made in metabase, so that management could make informed decision. If you wanna know a bit more here's the video:

#### **[Video Explanation](https://www.loom.com/share/8a937f33dc624cfd81903476355bb42a)**

*The video was primarily made for my mentor* 


**Have a great day ahead!**

