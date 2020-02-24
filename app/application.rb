class Application

  def call(env)
    resp = Rack::Response.new

    time1 = Time.new

    if time1.inspect < 12:00:00
      resp.write "Good Morning!"
    else time1.inspect > 12:00:00
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
