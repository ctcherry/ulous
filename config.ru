require 'ulous'

run Filter::ParseParams.new(
  Responder::UriContains.new('foo', 
    Responder::Static.new("Hey my URI has 'foo' in it!"), 
    Responder::Static.new("I'm looking for some foo")
  )
)