class Unary
  
  def initialize()
    
  end
  
  def call(env)
    return [200, {"Content-Type" => "text/html"}, "Hello Rack!"]
  end
  
end