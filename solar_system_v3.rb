class SolarSystem
  attr_accessor :planets, :formation_year

  def initialize
    @planets = []
    @formation_year = nil
  end

  def add_planet(p)
    @planets << p
  end

  def add_planet_list(list)
    list.each do |item|
      @planets << item
    end
  end

  def distance_between_planets(p_one, p_two)
    return (p_one.distance_from_the_sun - p_two.distance_from_the_sun).abs
  end

  def print_relative_planet_distances(center_planet)
    @planets.each do |planet|
      if planet != center_planet
        puts "#{ planet.name } is #{ distance_between_planets(planet, center_planet) } miles " +
        "from #{ center_planet.name }"
      end
    end
    return nil
  end

  def print_all_planet_distances
    @planets.each do |planet|
      puts "\nDistances from #{ planet.name }: "
      print_relative_planet_distances(planet)
      puts
    end
    return nil
  end

  def info_printer
    print "Hello! "
    while TRUE
      puts "\nWhich planet would you like to learn about? Please select by number."
      @planets.each_with_index do |planet, index|
        print "#{ index + 1 }. "
        puts planet.name
      end
      puts "#{ @planets.length + 1}. Exit"
      choice = gets.chomp.to_i

      if choice <= @planets.length && choice >= 1
        @planets[choice-1].talk_about_it

        while TRUE
          puts "\nWould you also like to know the distance from #{ @planets[choice-1].name } to the other planets?"
          dist_choice = gets.chomp.downcase

          if dist_choice == "yes"
            puts "\nOkay! Here are the distances of each planet from #{ @planets[choice-1].name }:"
            print_relative_planet_distances(@planets[choice-1])
            break
          elsif dist_choice == "no"
            break
          else
            puts "\nI didn't get your answer. Please type 'yes' or 'no'"
          end
        end

      elsif choice == @planets.length + 1
        puts "\nGoodbye!"
        break
      elsif choice < 1 || choice > @planets.length
        puts "\nI didn't catch that. Please try again."
      else
        puts "\nSomething went wrong in the info_printer function."
      end

    end
    return nil
  end
end

# TO DO: Define a method that returns the local year of the planet based on it's rotation since the beginning of the solar system
