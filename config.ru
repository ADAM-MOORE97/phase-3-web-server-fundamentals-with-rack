require 'rack'
require 'pry'

class App
    def call(env)
       path = env["PATH_INFO"]

       if path == "/"
        [200, {"Content-Type"=>"text/html"}, ["<h1>HEY WORLD!</h1>"]]
       elsif path == "/potato" 
        [200, {"Content-Type"=>"text/html"}, ["<p> boil, mash, add milk and butter!</p>"]]
       else
        [404, {"Content-Type"=>"text/html"}, ["Page Not Found"]] 
       end
    end
end

run App.new