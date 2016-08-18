class Planet
  attr_accessor :name, :color, :axis_tilt, :moons, :rings, :average_temperature,
  :distance_from_the_sun, :rotation_rate

  def initialize(n, c, a, m, ri, t, d, rr)
    @name = n.capitalize #String (capitalized)
    @color = c #String
    @axis_tilt = a #Fixnum
    @moons = m #Fixnum
    @rings = ri #Fixnum
    @average_temperature = t #Float
    @distance_from_the_sun = d #Fixnum or Float
    @rotation_rate = rr #Fixnum or Float
  end

  def talk_about_it
    puts
    puts "_" * 100
    puts "All about #{ @name }:"
    puts "_" * 100
    puts "|" + "Color:".center(10) + "|" + "Axis:".center(10) + "|" +
    "Moons:".center(10) + "|" + "Rings:".center(10) + "|" + "Avg Temp:".center(15) + "|" +
    "Dist from Sun:".center(20) + "|" + "Rotation:".center(15) + "|"
    # puts "_" * 100
    puts "|" + @color.center(10) + "|" + @axis_tilt.to_s.center(10) + "|" +
    @moons.to_s.center(10) + "|" + @rings.to_s.center(10) + "|" +
    @average_temperature.to_s.center(15) + "|" + @distance_from_the_sun.to_s.center(20) +
    "|" + @rotation_rate.to_s.center(15) + "|"
    puts "_" * 100
    puts
    return nil
  end
end
