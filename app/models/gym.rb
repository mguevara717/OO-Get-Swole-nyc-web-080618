require "pry"
class Gym

 ALL = []

  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def memberships
    #one of the method that establishes a relationship
    #between another class (Guy => Membership)
    Membership.all.select do |membership|
      membership.gym == self
      #binding.pry
    end
      #binding.pry
  end

  def lifters
    Lifter.all.map do |lifter|
       lifter
      #binding.pry
      end
  end

  def lifter_names
    Lifter.all.map do |gym_rat|
         gym_rat.name
         #binding.pry
      end
    end


    def lift_total_for_gym
    #aggregate method (something extra)
    total = 0

    lifters.each do |gym_rat|
      total += gym_rat.lift_total
    end
      total
    end #end of instance method

end #end of class
