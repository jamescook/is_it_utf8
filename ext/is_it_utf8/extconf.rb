require 'mkmf'

dir_config('is_it_utf8')
if find_header 'simdutf8check.h', File.expand_path(File.dirname(__FILE__))
  create_makefile('is_it_utf8')
else
  raise "Could not find simdutf8check.h"
end
