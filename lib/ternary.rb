class Ternary
  
  Ternary
  
  def initialize(upstream1, upstream2)
    @upstream1 = upstream1
    @upstream2 = upstream2
  end
  
  def call(env)
    @upstreams.each { |u| u.call(env) }
  end
  
end