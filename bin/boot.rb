#!/usr/bin/env ruby
build_dir = ARGV[0]


system("PATH=#{build_dir}/mono/bin:#{build_dir}/nginx/sbin:$PATH")
system("ln -s #{build_dir}/mono /opt/mono")
system("ln -s #{build_dir}/nginx /opt/nginx")
system("ln -s #{build_dir}/www /www")

system("nginx")
system("fast-cgi_mono_server4 /applications=/:/www/ /socket=tcp:127.0.0.1:9000 &")