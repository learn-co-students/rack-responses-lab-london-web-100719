class Application

    def call(env)
        resp = Rack::Response.new

        time = Time.now
        noon_time = Time.parse("12:00")

        if time > noon_time
            resp.write "Good Afternoon"
        else
            resp.write "Good Morning"
        end
        
        resp.finish
    end

end