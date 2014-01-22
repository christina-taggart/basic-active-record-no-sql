require_relative 'app'

claude = Student.where('first_name = ?', 'Claude').first

p claude[:gender] == "f"
p claude[:id] == 1804

claude[:last_name] = "Hey"
claude.save

new_claude = Student.where('id = ?', 1804).first
p new_claude[:last_name] == "Hey"

cohort_1 = Cohort.where('id = ?', 1).first
cohort_1[:name] = "Sea Lions"
cohort_1.save
test_cohort_1 = Cohort.where('id = ?', 1).first
p test_cohort_1[:name] == "Sea Lions"

Student.all

Cohort.all


