class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    resp.write "Current time is: #{time.inspect}"
    resp.finish
  end
end
