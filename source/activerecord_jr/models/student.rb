class Student < Database::Model

  def self.table_name
    "students"
  end

  def table_name
    "students"
  end
  
  self.attribute_names =  [:id, :cohort_id, :first_name, :last_name, :email,
                           :gender, :birthdate, :created_at, :updated_at] 

  attr_reader :attributes, :old_attributes

  # e.g., Student.new(:id => 1, :first_name => 'Steve', :last_name => 'Rogers', ...)
  def initialize(attributes = {})
    @attribute_names = [:id, :cohort_id, :first_name, :last_name, :email,
                           :gender, :birthdate, :created_at, :updated_at] 
    super
  end

  def cohort
    Cohort.where('id = ?', self[:cohort_id]).first
  end

  def cohort=(cohort)
    self[:cohort_id] = cohort[:id]
    self.save
    cohort
  end

end
