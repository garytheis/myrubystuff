require File.expand_path(File.dirname(__FILE__) + '/entity')

class Soldier < Entity
  @@names = ["Steve","Joe","Fred","Bill","Arnold"]
  def initialize
    @name_index = Random.rand(@@names.length)
    super Random.rand(100),Random.rand(100)
  end
  def to_s
    "(#@xpos, #@ypos, #{@@names[@name_index]})"
  end
end