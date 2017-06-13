#!/usr/bin/ruby
require 'rubygems'
require 'socket'

MSG="\x11\x02\x40\x20\xc7\xf0\x00\x2a\xff\x00\x00\x14\x00\x21\xbe\x95\x26\x36\x40\x5f\x7e\x04\x00\x00\x00\x00\x00\x04\x01\x00\x00\x00"

sock = UDPSocket.new
server_addr="172.30.121.148"
server_port=13822
sock.send(MSG, 0, server_addr, server_port)
msg, sender = sock.recvfrom(255)
sock.close