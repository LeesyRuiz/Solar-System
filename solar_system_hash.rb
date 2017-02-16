
class Planet
  attr_accessor :planet_hash

  def initialize(name, color, moons, mythological_namesake, distance_from_the_sun)
    @planet_hash = {
      "name" =>  name,
      "color" =>  color,
      "moons" => moons,
      "mythological_namesake"  => mythological_namesake,
      "distance_from_the_sun" => distance_from_the_sun
    }
  end
end

class SolarSystem
  attr_accessor :planet_list
  def initialize
    @planet_list = []
  end

  def add_planet(planet)
    @planet_list.push(planet)
  end


  def print
    planet_list.each do |planet|
      puts planet.name
    end
  end



end

mars = Planet.new("Mars" , "red" , "2" , "Roman God of War" , "228 million kilometers")
earth  = Planet.new("Earth" , "green & blue" , "1" , "Greek Goddess Terra Mater" , "150 million kilometers")
saturn  = Planet.new("Saturn" , "yellow" , "17" , "God Saturnus, the god of agriculture and harvest" , "1.4 billion kilometers")
jupiter = Planet.new(nil, nil, nil, nil, nil)
mercury = Planet.new(nil, nil, nil, nil, nil)
neptune = Planet.new(nil, nil, nil, nil, nil)
venus = Planet.new(nil, nil, nil, nil, nil)
saturn = Planet.new(nil, nil, nil, nil, nil)

def print_attributes(planet)
  x = planet.planet_hash
  x.keys.sort.each do |key|
    puts "#{key} : #{x[key]}"
  end
end




puts " Hey!\n Here are some of our incredble planets..."
puts " 1.Earth\n 2.Marth\n 3.Saturn\n 4.Venus\n 5.Neptune\n 6.Uranus\n 7.Jupiter\n 8.Mercury\n"
puts " What planet would you like to learn about today? "
planet_selected = gets.chomp

case planet_selected
when "Mars"
  print_attributes(mars)
when "Jupiter"
  print_attributes(jupiter)
when "Earth"
  print_attributes(earth)
when "Saturn"
  print_attributes(saturn)
when "Venus"
  print_attributes(venus)
end
