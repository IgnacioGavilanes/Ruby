require_relative './server_class.rb'

hostname = ARGV[0] #Captures hostname
port = ARGV[1] #Captures port

server = Server.new(hostname, port)
puts "Server running on port #{port}"
server.connect