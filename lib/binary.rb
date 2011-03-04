class Binary
  
  attr_accessor :upstream
  
  def initialize(upstream)
    @upstream = upstream
  end
  
  def call(env)
    @upstream.call(env)
  end
  
end