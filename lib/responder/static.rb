class Responder::Static < Unary
  
  def initialize(content, status = 200, content_type = "text/html", other_headers = {})
    super()
    @content = content
    @status = status
    @content_type = content_type
    @other_headers = other_headers
  end
  
  def call(env)
    return [@status, {"Content-Type" => @content_type}.merge(@other_headers), @content]
  end
  
end