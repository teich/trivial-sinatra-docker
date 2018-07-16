require 'sinatra'
require 'json'

set :port, 8080
set :bind, '0.0.0.0'

get '/' do
    output = "Hello world!</br>"
    env_string = JSON.pretty_generate(ENV.to_a).gsub!("\n",'</br>')
    output += "Environment: </br> #{env_string} </br>"
    output
end