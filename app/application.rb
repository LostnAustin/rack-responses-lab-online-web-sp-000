class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Good Morning!"
    resp.finish
    time1 = Time.new

    if resp < 12
      resp.write "Good Morning!"
    else resp > 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
