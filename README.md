# AdventureWorksDWandBIML
A data integration/ETL project where I'm building a SSIS data warehouse solution for a sample database using a templating language and C# rather than the conventional GUI approach. This approach exponentially reduces human errors and development time for large-scale DW projects. 

SETUP:
===========================
1. Download AdventureWorks2012 database from CodePlex or Microsoft's website
2. Either 
  (1) publish the two database projects (AwBimlStaging & AwBimlEdw) to create necessary objects to generate and run the SSIS packages or 
  (2) run the 2 SQL scripts (AwBimlStaging.sql & AwBimlEdw.sql) on the root of this project
3. Download BIMLScript for Visual Studio from Varigence's website
4. Open project
5. Hold Ctrl and select all *.biml files under Miscellanous folder with a prefix ranging from 10 to 30. Right-click and select Generate SSIS Packages.
6. Once the packages are generated, execute the "Generate Staging Schema.dtsx" to generate the staging schema.
7. Select all *.biml files with a number prefix (10 to 90), right-click, and  "Generate SSIS Packages". This will generate SSIS packages for dimensions, facts and orchestration.   
8. Execute the _Master.dtsx to run it all. 

Notes:
- Use AwBimlEdw.dw.DimAudit table to monitor progress of each execution.
- Modify the 20_Model.biml to include the necessary tables to import from source database. Mark appropriate tables as incremental. Within the AwBimlEdw (Data Warehouse), you will need to create the dimensions and facts associated with the extracted tables with the correct extended properties. Also, you will need to repeat step 5 & 6 to create the staging schema.
