class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Good Morning!\n"
    resp.finish

    ran_num = Kernel.rand(1..24)
    resp.write "#{ran_num}\n"
    if ran_num < 12
      resp.write "Good Morning!"
    else ran_num > 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
