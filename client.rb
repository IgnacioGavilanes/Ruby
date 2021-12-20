require 'socket' #Allows for the use of sockets from stdlib

hostname = ARGV[0] #Captures command line argument (hostname) introduced by client
port = ARGV[1] #Captures command line argument (port) introduced by client

socket = TCPSocket.new(hostname, port) #Opens a TCP connection to the specified hostname on the specified port

while line = socket.gets # Read lines from socket
  puts line #Print them
end

socket.close #Closes IOs and flushes any pending writes to the operating system. The stream is unavailable for any further data operations;
