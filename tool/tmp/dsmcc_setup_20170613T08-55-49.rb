#!/usr/bin/ruby
require 'rubygems'
require 'socket'

MSG="\x11\x02\x40\x10\x49\xc6\x25\x0b\xff\x00\x00\xb8\x44\xe0\x8e\xb9\x78\x17\x40\x5f\x7e\x14\x00\x00\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x44\xe0\x8e\xb9\x78\x17\x00\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x0a\x0a\x0a\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x01\x00\x02\x02\x06\x00\x00\x00\x00\x00\x00\x05\x73\x63\x61\x74\x49\x64\x3d\x31\x37\x35\x38\x35\x30\x3b\x64\x65\x6c\x69\x76\x65\x72\x79\x49\x64\x3d\x53\x54\x4c\x4f\x2d\x69\x6e\x64\x65\x6d\x61\x6e\x64\x2e\x63\x6f\x6d\x2d\x49\x4e\x54\x4c\x31\x31\x31\x33\x30\x30\x30\x30\x30\x36\x38\x35\x38\x36\x31\x32\x2d\x31\x33\x38\x34\x34\x39\x31\x36\x30\x30\x30\x30\x30\x3b\x73\x65\x72\x76\x69\x63\x65\x41\x72\x65\x61\x3d\x31\x30\x30\x30\x3b\x76\x69\x64\x65\x6f\x44\x65\x63\x6f\x64\x65\x54\x79\x70\x65\x3d\x30\x30\x30\x31\x3b"

sock = UDPSocket.new
server_addr="172.30.121.152"
server_port=13822
sock.send(MSG, 0, server_addr, server_port)
msg, sender = sock.recvfrom(255)
sock.close