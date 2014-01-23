require_relative 'app'

p Cohort.find(1)[:name]
p Cohort.find(1)[:name] == 'Best Cohort Ever'
p Cohort.where('name = ?', 'Epsilon')[0].attributes[:id] == 5
p Cohort.find(4).attributes[:name] == 'Gamma'

p Student.find(1)[:first_name] == 'Ryley'
p Student.where('first_name = ?', 'Ryley')[0].attributes[:id] == 1
# stu = {first_name: 'Stuart4', last_name: 'Mcfourson',
#                   email: 'abc@mail.com', birthdate: Time.now,
#                   cohort_id: 6, gender: 'm'}

# Student.create(stu)

# p Cohort.all
p Student.all.last




