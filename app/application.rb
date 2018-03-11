class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now
    if now.hour >= 12
      resp.write "Godd Afternoon"
    else
      resp.write "Goog Morning"
    end
    resp.finish
  end
end
