#1 Method argments
def good_students(std1="Jora", std2="Ruso", *stds)
"#{std1}, #{std2}, #{stds}."
end
puts good_students()
puts good_students("Temo", "Bela", "Bera")
puts good_students("Temo", "Bela", "Bera", "Shmela", "Dshhhhhadsa")
puts"________________________________________________________________"
#2 Splat arguments (which i already used above)
class Car
  def engine_and_gearbox(engine, gearbox)
    "I have #{engine} engine and #{gearbox} gearbox"
  end
end

class SportsCar < Car
  def engine_and_gearbox(*not_used)

  super
  end
end
hellcat = SportsCar.new
puts hellcat.engine_and_gearbox(5.0 , "Automatic")
puts"________________________________________________________________"
#3 Procs
cubes = Proc.new {|number| number ** 3}
a = [1, 2, 3, 4, 5]
a_cubes = a.map(&cubes)
p a_cubes
puts"________________________________________________________________"
