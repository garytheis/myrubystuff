require File.expand_path(File.dirname(__FILE__) + '/entity')
require File.expand_path(File.dirname(__FILE__) + '/soldier')
require File.expand_path(File.dirname(__FILE__) + '/entity_stats')

class World
  def initialize(entitycount)
    @entities = []
    entitycount.times { @entities.push Soldier.new }
    EntityStats.instance.report
  end
  def dostuff
    @entities.each {|x| x.tick}
    #@entities.sort! {|a,b| a.xpos <=> b.xpos }
  end
  def showme(count)
    count.times { |x|
      puts @entities[x].to_s
    }
  end
end

theworld = World.new (5_308_416)           # (1_000_000)  (2_654_208) (5_308_416)
theworld.showme 5
theworld.dostuff
theworld.showme 5
theworld.dostuff
theworld.showme 5
theworld.dostuff
theworld.showme 5

