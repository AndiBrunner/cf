#!/usr/bin/env ruby
build_dir = ARGV[0]

system("nginx")
system("fast-cgi_mono_server4 /applications=/:/www/ /socket=tcp:127.0.0.1:9000 &")