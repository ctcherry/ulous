class Responder::UriContains < Binary
  
  def initialize(contains, success_upstream, failure_upstream)
    @contains = contains
    @success_upstream = success_upstream
    @failure_upstream = failure_upstream
  end
  
  def call(env)
    if env['REQUEST_URI'].include? @contains
      @success_upstream.call(env)
    else
      @failure_upstream.call(env)
    end
  end
  
end