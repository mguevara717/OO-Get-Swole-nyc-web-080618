require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


nysc = Gym.new("New York Sports Club")
equinox = Gym.new("Equinox")
planet_fitnes = Gym.new("Planet Fitness")

marissa = Lifter.new("Marissa", 90)
jose = Lifter.new("Jose", 180)

gold_plan = Membership.new(marissa, equinox, "$100")


#binding.pry
