#!/usr/bin/ruby
require 'rubygems'
require 'socket'

MSG="\x11\x02\x40\x10\x49\xc6\x25\x0b\xff\x00\x00\xb4\x00\x21\xbe\x8d\xd9\xf3\x40\x5f\x7e\x0c\x00\x00\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\xbe\x8d\xd9\xf3\x00\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x0a\xfd\x08\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7c\x01\x00\x02\x02\x06\x00\x00\x00\x00\x00\x00\x05\x6f\x63\x61\x74\x49\x64\x3d\x31\x37\x35\x38\x35\x30\x3b\x64\x65\x6c\x69\x76\x65\x72\x79\x49\x64\x3d\x53\x54\x4c\x4f\x2d\x68\x62\x6f\x2e\x63\x6f\x6d\x2d\x48\x58\x53\x54\x30\x30\x30\x30\x30\x30\x30\x30\x30\x31\x30\x37\x32\x33\x34\x30\x2d\x31\x34\x39\x35\x38\x35\x37\x36\x30\x30\x30\x30\x30\x3b\x73\x65\x72\x76\x69\x63\x65\x41\x72\x65\x61\x3d\x31\x30\x30\x30\x30\x3b\x76\x69\x64\x65\x6f\x44\x65\x63\x6f\x64\x65\x54\x79\x70\x65\x3d\x30\x30\x30\x31\x3b"

sock = UDPSocket.new
server_addr="172.30.121.152"
server_port=13822
sock.send(MSG, 0, server_addr, server_port)
msg, sender = sock.recvfrom(255)
sock.close