require_relative 'planet_v3'
require_relative 'solar_system_v3'

ss = SolarSystem.new

a = Planet.new("Earth", "blue", 2, 1, 0, 70.0, 56000, 24)
b = Planet.new("Mercury", "purple", 42, 3, 2, 400.0, 29000, 17)
c_list = [
  Planet.new("Mars", "orange", 15, 2, 1, 314.1516, 34000, 12),
  Planet.new("Venus", "turquoise", 0, 4, 0, 12, 88000, 86),
]
d_list = [
  Planet.new("Saturn", "magenta", 92, 8, 3, 42, 87864, 36),
  Planet.new("Jupiter", "vermillion", 13, 0, 1, 165, 7643, 56),
  Planet.new("Extra Jupiter", "extra vermillion", 14, 13, 0, 235, 123245, 43),
]

ss.formation_year = 400 # not used yet (local year method not defined in solar_system)

ss.add_planet(a)
ss.add_planet(b)
ss.add_planet_list(c_list)
ss.add_planet_list(d_list)

# ss.info_printer can print info on any planet, including distance between planets
ss.info_printer



# ==============================================
# some irb tests
# 2.3.1 :002 > a = Planet.new("mercury")
#  => #<Planet:0x007ff0c2835558 @name="mercury">
# 2.3.1 :003 > a.name
#  => "mercury"
# 2.3.1 :004 > a.color = "purple"
#  => "purple"
# 2.3.1 :005 > a.color
#  => "purple"
# 2.3.1 :006 > a.color = "orange"
#  => "orange"
# 2.3.1 :007 > a
#  => #<Planet:0x007ff0c2835558 @name="mercury", @color="orange">
# 2.3.1 :008 > a.distance_from_the_sun = 999_999_999
#  => 999999999
# 2.3.1 :009 > a
#  => #<Planet:0x007ff0c2835558 @name="mercury", @color="orange", @distance_from_the_sun=999999999>
# 2.3.1 :010 > b = Planet.new("earth")
#  => #<Planet:0x007ff0c19589b8 @name="earth">
# 2.3.1 :011 > b.name
#  => "earth"
# 2.3.1 :012 > b.name = "earth 2.0"
#  => "earth 2.0"
# 2.3.1 :013 > b.axis_tilt = 2
#  => 2
# 2.3.1 :014 > b
#  => #<Planet:0x007ff0c19589b8 @name="earth 2.0", @axis_tilt=2>
# 2.3.1 :015 > a
#  => #<Planet:0x007ff0c2835558 @name="mercury", @color="orange", @distance_from_the_sun=999999999>
# 2.3.1 :016 >
# 2.3.1 :002 > a = Planet.new("earth", "blue", 2, 1, 0, 70.0, 56000, 24)
#  => #<Planet:0x007fb68b860058 @name="Earth", @color="blue", @axis_tilt=2, @moons=1, @rings=0, @average_temperature=70.0, @distance_from_the_sun=56000, @rotation_rate=24>
# 2.3.1 :003 > a = Planet.new("mercury", "purple", 0, 3, 2, 200.0, 29000, 38)
#  => #<Planet:0x007fb68c09d1f8 @name="Mercury", @color="purple", @axis_tilt=0, @moons=3, @rings=2, @average_temperature=200.0, @distance_from_the_sun=29000, @rotation_rate=38>
# 2.3.1 :004 > ObjectSpace.each_object(Planet).to_a
#  => [#<Planet:0x007fb68b860058 @name="Earth", @color="blue", @axis_tilt=2, @moons=1, @rings=0, @average_temperature=70.0, @distance_from_the_sun=56000, @rotation_rate=24>, #<Planet:0x007fb68c09d1f8 @name="Mercury", @color="purple", @axis_tilt=0, @moons=3, @rings=2, @average_temperature=200.0, @distance_from_the_sun=29000, @rotation_rate=38>]
# 2.3.1 :005 >
