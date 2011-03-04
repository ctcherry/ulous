class Ternary
  
  def initialize(upstream1, upstream2)
    @upstream1 = upstream1
    @upstream2 = upstream2
  end
  
  def call(env)
    if true
      @upstream1.call(env)
    else
      @upstream2.call(env)
    end
  end
  
end