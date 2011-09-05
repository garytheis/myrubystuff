require 'singleton'

class EntityStats
  include Singleton

  def initialize
    @count = 0
  end

  def record(entity) #  Record a new entity
    @count += 1
  end

  def report # Report entity statistics
    puts "Number of entities created: #@count"
  end

end