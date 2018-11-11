require 'rack'

app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, ["aasasasaa"] ]
end

run app
