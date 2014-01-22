# ActiveRecord Jr 2 SQL Be Gone 
 
##Learning Competencies 

* Use Ruby commands to encapsulate standard SQL CRUD operations on a relational database
* Abstract a pattern for a model after identifying repetitions in code and relationships in data
* Organize code for consistency and readability
* Use database tools (like sqlite3) to view data and test outcomes of Ruby code
* Build test methods with descriptive output and clear indicators of passing tests.

##Summary 

 In the last version of the challenge we refactored some simple methods into the base `Database::Model` class, but none of those methods contained actual SQL.  All student-specific SQL remained in the `Student` class.  Let's change that.

##Releases

###Release 0 : Refactor SQL Into the Base Class

Copy the `active_record_jr` directory from your ActiveRecord Jr. 1 challenge into the source directory for this challenge and start from that code.

Remember, the base class only knows what it's told.  Somehow the `Student` and `Cohort` classes will have to get the following information to the base class:

1. What table am I associated with?
2. What is my primary key?
3. What class do I need to instantiate when returning results?

One possible strategy for this is to see how we set `attribute_names`.  There are others.  Refactor the following methods into `Database::Model`:

1. `Student.all` and `Cohort.all`
2. `Student.create` and `Cohort.create`
3. `Student.where` and `Cohort.where`
4. `Student.find` and `Cohort.find`
5. `Student#new_record?` and `Cohort#new_record?`
6. `Student#insert!` and `Cohort#insert!`
7. `Student#update!` and `Cohort#update!`

Feel free to play around in the ActiveRecord, Jr. console to get a feel for how it works.  And **remember**, once a method is moved to `Database::Model` you might need to change hard-coded references to the classes the method came from.


<!-- ##Optimize Your Learning  -->

##Resources