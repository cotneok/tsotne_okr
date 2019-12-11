class Student
  attr_accessor :debt, :name

  def initialize(name, last_name, gpa, debt)
    @name = name
    @last_name = last_name
    @gpa = gpa
    @debt = debt
  end
end

require "csv"

CSV.open("data.csv", "wb") do |csv|
  csv << ["name", "last_name", "gpa", "debt"]
  csv << ["Tsotne", "Okrostsvaridze", "4.0", "5000"]
  csv << ["Jondi", "Bagaturia", "3.5", "3000"]
end
