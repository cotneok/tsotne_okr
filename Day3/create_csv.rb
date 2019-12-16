require "csv"

CSV.open("data.csv", "wb") do |csv|
  csv << ["name", "last_name", "gpa", "debt"]
  csv << ["Tsotne", "Okrostsvaridze", "4.0", "5000"]
  csv << ["Jondi", "Bagaturia", "3.5", "3000"]
end

CSV.open("names.csv", "wb") do |csv|
  csv << ["name"]
  csv << ["Tsotne"]
  csv << ["Ren"]
  csv << ["Yoda"]
end
