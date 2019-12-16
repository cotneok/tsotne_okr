class Student
  attr_accessor :debt, :name, :gpa, :last_name

  def initialize(name, last_name, gpa, debt)
    @name = name
    @last_name = last_name
    @gpa = gpa
    @debt = debt
  end
end
