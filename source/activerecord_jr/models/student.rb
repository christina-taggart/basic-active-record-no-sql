
class Student < Database::Model

  def self.table_name
    "students"
  end

  def table_name
    "students"
  end

  def self.attribute_names
    attribute_names =  [:id, :cohort_id, :first_name, :last_name, :email,
                             :gender, :birthdate, :created_at, :updated_at]
  end

  attr_reader :attributes, :old_attributes

  def cohort
    Cohort.where('id = ?', self[:cohort_id]).first
  end

  def cohort=(cohort)
    self[:cohort_id] = cohort[:id]
    self.save
    cohort
  end

end
