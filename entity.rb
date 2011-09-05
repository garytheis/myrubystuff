require File.expand_path(File.dirname(__FILE__) + '/entity_stats')

class Entity
  attr_reader :xpos,:ypos
  def initialize(x,y)
    @count, @xpos, @ypos = 0, x, y
    EntityStats.instance.record(self)
  end

  def tick()
    @xpos += Random.rand(10)-5
    @ypos += Random.rand(10)-5
  end

end