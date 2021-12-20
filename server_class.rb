require 'socket' #Allows for the use of sockets from stdlib

class Server
    
    def initialize (hostname, port)
        @hostname = hostname
        @port = port
        @connection = TCPServer.new(hostname, port) #Creates a new server
    end

    def connect
        loop do #Server runs on loop
            conn = @connection.accept # Wait for a client to connect
            conn.puts "Hello, client"
            conn.puts "Time is #{Time.now}"
        end
    end
end