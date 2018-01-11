class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    resp.write "Current time is: #{time.inspect}"
    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
