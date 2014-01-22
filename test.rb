require_relative 'app'

# cohort = Cohort.find(1)
# cohort[:name] = 'Danger Zone'
# p Cohort.find(1)[:name] == 'Danger Zone'


# deshaun = Student.find(1)
# deshaun[:gender] = 'm'
# deshaun.save
# p Student.find(1)[:gender] == 'm'

# darcey = Student.create({:first_name => 'Darcey', :last_name => 'Lachtman', :email => 'dslachtman@Gmail.com', :gender => 'f', :birthdate => '1991-01-16'})
# darcey[:cohort_id] = 1
# p darcey.cohort[:name] == "Danger Zone"

# this_cohort = Cohort.new({:name => "Fort Kickass"})
# this_cohort.save
# p Cohort.all

# roy = Student.create({:first_name => 'Roy', :last_name => 'Lee', :email => 'lee.sh.roy@gmail.com', :gender => 'm', :birthdate => '1989-11-10'})
# roy
# roy[:cohort_id] = 14
# p Student.where('cohort_id =?', '14')

# p cohort.new_record? == false
duchess = Student.create({:first_name => 'Sterling', :last_name => 'Archer', :email => 'sterlingarcher@isis.com', :gender => 'm', :birthdate => '1979-06-25'})
duchess.save
p Student.where('first_name =?', 'Sterling')