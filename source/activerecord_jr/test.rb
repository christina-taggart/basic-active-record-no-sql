require_relative 'app.rb'

cohort = Cohort.find(1)
cohort[:name] = 'Best Cohort Ever'
cohort.save

# This re-queries the database, so we're checking that we actually
# saved the data as intended
p Cohort.find(1)[:name] == 'Best Cohort Ever'

cohort[:name] = 'Second Best Cohort Ever'
cohort.save

# requery the db again!
p Cohort.find(1)[:name] == 'Second Best Cohort Ever'

#find a student and change the student's name
student = Student.find(5)
student[:first_name] = 'Martha'
student.save

# check to see if the save worked
p Student.find(5)[:first_name] == 'Martha'

#create a new student
new_student = Student.new(
        :cohort_id => 5,
        :first_name => 'Test',
        :last_name => 'Person',
        :email => 'test@person.com',
        :gender => 'male',
        :birthdate => '1990-12-12'
  )

# this should be a new student, i.e. he doesn't have an id yet (determined when seeding the database)
p new_student.new_record? == true
new_student.save

# after saving a student, they are added to the database
p new_student.new_record? == false
p Student.find(2001)[:first_name] == "Test"


# change a cohort name

second_cohort = Cohort.find(5)
second_cohort[:name] = "Not epsilon"
second_cohort.save

p Cohort.find(5)[:name] == "Not epsilon"

# ----- John's tests ------- #

# require_relative 'app'
# require 'faker'

# def assert(error, test)
#   raise error unless test
# end


# # 1. Instances of Student can be created and saved to the DB
# $john_count = Student.where('last_name = ?', "Olmsted").length
# john = Student.create :cohort_id => 8,
#                       :first_name => "John",
#                       :last_name => "Olmsted",
#                       :email => "johnaolmsted@gmail.com",
#                       :gender => "m"
# john.save
# assert("Student saves students to db",
#         Student.where('last_name = ?', "Olmsted").length == ($john_count += 1))

# # 2. Instances of Cohort can be created and saved to the DB
# $omega_count = Cohort.where('name = ?', "Omega").length
# omega = Cohort.create :name => "Omega"
# omega.save
# assert("Cohort saves cohorts to db",
#         Cohort.where('name = ?', "Omega").length == ($omega_count +=1))

# # 3. Student can be searched and updated
# test_student = Student.find(50)
# new_name = Faker::Name.first_name
# test_student[:first_name] = new_name
# test_student.save
# assert("Student can be searched and updated",
#         Student.find(50)[:first_name] == new_name)

# # 4. Cohort can be searched and updated
# test_cohort = Cohort.find(2)
# new_name = Faker::Name.first_name
# test_cohort[:name] = new_name
# test_cohort.save
# assert("Cohort can be searched and updated",
#         Cohort.find(2)[:name] == new_name)
