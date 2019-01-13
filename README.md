# Cucumber_Data_Tables

Data tables are used to generate cucumber expressions to generate different error messages when inputting invalid passwords on the BBC registration page(https://www.bbc.co.uk/). 

When using a data table it automatically reads the headers and loops through the rows of data from the first data entry to the end. This also uses regex commands to make the step definitions more reusable and maintainable. This is a page object model consisting of capybara methods and a test framework to test the different combinations in the data table. 

To run this file, you can clone the repo and then by moving into the repo and running cucumber, this will show you reaching the registration page and getting the specific error message.

