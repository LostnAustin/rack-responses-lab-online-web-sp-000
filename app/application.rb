class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Good Morning!"
    resp.finish

    ran_num = Kernel.rand(1..24)
    resp.write "#{ran_num}\n"
    if resp < 12
      resp.write "Good Morning!"
    else resp > 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
