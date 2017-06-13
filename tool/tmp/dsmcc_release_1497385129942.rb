#!/usr/bin/ruby
require 'rubygems'
require 'socket'

MSG="\x11\x02\x40\x20\xc7\xf0\x00\x2a\xff\x00\x00\x14\x44\xe0\x8e\xb9\x78\x17\x40\x5f\x7e\x10\x00\x00\x00\x00\x00\x04\x01\x00\x00\x00"

sock = UDPSocket.new
server_addr="172.30.121.152"
server_port=13822
sock.send(MSG, 0, server_addr, server_port)
msg, sender = sock.recvfrom(255)
sock.close