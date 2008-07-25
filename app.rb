#!/usr/bin/env ruby

require 'rack'

class RackHelloWorld
  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["Test"]]
  end
end

Rack::Handler::Mongrel.run(RackHelloWorld.new, :Port => 3000) do
  puts "Server started..."
end
