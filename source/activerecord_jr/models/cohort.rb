class Cohort < Database::Model

  def self.table_name
    "cohorts"
  end

  def table_name
    "cohorts"
  end

  def self.attribute_names
    attribute_names =  [:id, :name, :created_at, :updated_at]
  end
  attr_reader :attributes, :old_attributes

  def students
    Student.where('cohort_id = ?', self[:id])
  end

  def add_students(students)
    students.each do |student|
      student.cohort = self
    end
    students
  end

end
