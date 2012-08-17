require 'vcap/logging/sink/base_sink'
require 'vcap/logging/sink/file_sink'
require 'vcap/logging/sink/stdio_sink'
require 'vcap/logging/sink/string_sink'

WINDOWS = RbConfig::CONFIG['host_os'] =~ /mswin|mingw/
if !WINDOWS
  require 'vcap/logging/sink/syslog_sink'
end
