class Planet
  attr_accessor :name, :moons, :diameter, :color, :zodiac, :distance, :rotation

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @moons = planet_hash[:moons]
    @diameter = planet_hash[:diameter]
    @color = planet_hash[:color]
    @zodiac = planet_hash[:zodiac]
    @distance = planet_hash[:distance]
    @rotation = planet_hash[:rotation]
  end

  # Method to display information about a planet
  def show_details
    print @name.upcase + ": #{@name} has #{@moons} moons and a diameter of #{@diameter} miles."
    print "It is #{@color} in color and associated with the #{@zodiac} zodiac sign."
    puts "#{@name} is #{@distance} miles from the sun and has a solar rotation of #{@rotation} earth days!"
  end
end

class SolarSystem
  attr_accessor :planets

  def initialize
    @planets = []
  end

  # Method to add a planet to array planets
  def add_planet(planet)
    @planets.push(planet)
  end

  # Method to add an array of planets to array planets
  def add_list_of_planets(list_of_planets)
    list_of_planets.each do |planet|
      @planets.push(planet)
    end
  end

  # Method to display information in array planets
  def show_info
    @planets.each do |planet|
      planet.show_details
    end
  end
end

# Information about the different planets
venus = Planet.new( name: "Venus", moons: "0", diameter: "7,520.8", color: "orange", zodiac: "Libra", distance: "67.24 million", rotation: "224.7" )
mars = Planet.new( name: "Mars", moons: "2", diameter: "4,212", color: "red", zodiac: "Aries", distance: "141.6 million", rotation: "24.5" )
jupiter = Planet.new( name: "Jupiter", moons: "63", diameter: "86,881.4", color: "white, brown, and orange", zodiac: "Taurus", distance: "483.8 million", rotation: "0.41" )
mercury = Planet.new( name: "Mercury", moons: "0", diameter: "3,032", color: "dark grey", zodiac: "Gemini", distance: "35.98 million", rotation: "176" )
saturn = Planet.new( name: "Saturn", moons: "62", diameter: "72,367.4", color: "blue-ish gold", zodiac: "Capricorn", distance: "888.2 million", rotation: "10,759" )
neptune = Planet.new( name: "Neptune", moons: "14", diameter: "30,599", color: "bright blue", zodiac: "Pisces", distance: "2.795 billion", rotation: "0.67" )
uranus = Planet.new( name: "Uranus", moons: "27", diameter: "31,518", color: "blue-green", zodiac: "Aquarius", distance: "1.784 billion", rotation: "0.71" )
earth = Planet.new( name: "Earth", moons: "1", diameter: "7,917.5", color: "blue, white, and green", zodiac: "Virgo", distance: "92.96 million", rotation: "365" )

# Create new instance of the solar system class
solar_system = SolarSystem.new

# Add Venus, Mars, Jupiter, and Mercury to array planets within the solar system class
solar_system.add_planet(venus)
solar_system.add_planet(mars)
solar_system.add_planet(jupiter)
solar_system.add_planet(mercury)

# Array of remaining planets
list_of_planets = [saturn, neptune, uranus, earth]

# Add remaining planets to array planets
solar_system.add_list_of_planets(list_of_planets)

# Ask user if they want to learn about another planet
# Verify user input
def verify
  while true
    print "Would you like to learn about another planet? "
    user_input = gets.chomp.downcase

    if user_input == "yes"
      return true
    elsif user_input == "no"
      puts "Kewl! Ta-ta!"
      return false
    else
      puts "Kinda lookin for a yes or no answer here."
    end
  end
end

# Introductory message
puts "Hi user! We have information available about these different planets:"
puts "Venus\nMars\nJupiter\nMercury\nSaturn\nNeptune\nUranus\nEarth\nAll planets"

# Ask user what planet they want to learn about
# Display information about the respective planet
while true
  print "What planet would you like to learn about? "
  user_input = gets.chomp.downcase

  case user_input
  when "venus"
    venus.show_details
  when "mars"
    mars.show_details
  when "jupiter"
    jupiter.show_details
  when "mercury"
    mercury.show_details
  when "saturn"
    saturn.show_details
  when "neptune"
    neptune.show_details
  when "uranus"
    uranus.show_details
  when "earth"
    earth.show_details
  when "all"
    solar_system.show_info
  else
    puts "I don't understand. Please choose from one of the planet options above."
    next
  end

  # Ask user if they want to learn about another planet
  go_again = verify

  # Reiterate loop if user says yes, break loop/exit program if user says no
  if go_again != true
    break
  end
end
