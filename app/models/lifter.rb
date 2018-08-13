require "pry"
class Lifter

  attr_reader :name, :lift_total
  #reader of attribute name & lift_total for this class
  #whenever a delierable starts with a list, think of a data strucuture.
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.map do |lifter_membership|
        lifter_membership
      end
  end

  def gyms
    Gym.all.map do |lifter_membership|
      lifter_membership
    end
  end

  def self.average_lift
    #I need two temporary variables
    average = 0
    total = 0

    @@all.each do |gym_rat|
      total += gym_rat.lift_total
    end

      average = total/@@all.length
    end

    def sign_up(gym, cost)
      #creates a new Membership and associates a lifter and gym
      Membership.new(self, gym, cost) #new instance of membership, therefore creates new membership
    end

    def total_cost
      sum = 0
      memberships.each do |membership|
      sum += membership.cost
    end
      sum
    end # total_cost

end #end of class
