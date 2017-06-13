#!/usr/bin/ruby
require 'rubygems'
require 'socket'

MSG="@RUBY-BIN@"

sock = UDPSocket.new
server_addr="@PROC-ADDR@"
server_port=13822
sock.send(MSG, 0, server_addr, server_port)
msg, sender = sock.recvfrom(255)
sock.close
