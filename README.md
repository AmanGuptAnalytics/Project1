
# Analytics Engineering - Northwind Traders

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

The following are the existing tables in the OLTP system. 

**Customers:** Customers who buy food from Northwind 

**Employees:** who work at Northwind

**Orders:** Sales order transactions taking place between the customers & Northwind

**Order Details:** Order details for the orders placed by the customers

**Inventory transactions:** Tramsactopm details of each Inventory

**Products:** Contains current Northwind products that customers can purchase

**Shippers:** Ships orders from Northwind to customers

**Suppliers:** Supply Northwind with required items

**Invoices:** Invoice created for each other


### **Entity Relationship Diagram**

Based on the high level entities the following ERD diagram was created by using draw.io 

The following picture shows the ERD diagram 

##### **[Entity Relationship Diagram - Northwind Traders](https://github.com/AmanGuptAnalytics/Project-One-Analytics-Engineering-Using-dbt-and-BQ/blob/d2640d72658e5405ec0eaf955a7308b62e1a382d/snapshots/DABC%20NW-Conceptual.drawio.png)**


### **Data Flow Diagram**

A data flow diagram(DFD), also known as a context diagram, gives us the whole process of what we would be modeling, we can use this to understand quickly how data flows between the different entities. Please note there are various levels of the data flow diagram and as the level increases, it becomes more and more complicated. 

##### **[Data Flow Diagram - Northwind Traders](https://drive.google.com/file/d/1dhFsa2pbSaqv4hSZeYe-kKnrD0SUrsWY/view?usp=sharing)**
