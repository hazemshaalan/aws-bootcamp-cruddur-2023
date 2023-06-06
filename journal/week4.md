# Week 4 — Postgres and RDS
To be able to migrate follow these steps :
-Conncet to the db 

-UPDATE schema_information SET last_successful_run =0;


 -select * from schema_information;
 
 
 The output should be like the following :
 
 
 ```
 id | last_successful_run 
----+---------------------
  1 | 0                     
  `````
  
