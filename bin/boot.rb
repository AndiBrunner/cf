#!/usr/bin/env ruby
build_dir = ARGV[0]

`PATH=#{build_dir}/mono/bin:#{build_dir}/nginx/sbin:$PATH`
`ln -s #{build_dir}/mono /opt/mono`
`ln -s #{build_dir}/nginx /opt/nginx`
`ln -s #{build_dir}/www /www`
`nginx`
`fast-cgi_mono_server4 /applications=/:/www/ /socket=tcp:127.0.0.1:9000 &`