class Filter::ParseParams < Binary
  
  def call(env)
    env['params'] = {}
    env['QUERY_STRING'].split('&').each do |p|
      pair = p.split('=')
      v = pair.size == 1 ? '' : pair.last
      env['params'][pair.first] = v
    end
    @upstream.call(env)
  end
  
end