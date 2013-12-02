require 'logger'
require 'fileutils'

LOG_FILE="log_sample.log"
FileUtils.rm_f LOG_FILE

logs=Logger.new LOG_FILE
logs.progname="logs"

# ログレベル
#logs.level=Logger::INFO

logs.debug { "debug message" }
logs.info { "info message" }
logs.warn { "warn message" }
logs.error { "error message" }
logs.fatal { "fatal message" }

begin
  raise 'A test exception.'
rescue Exception => e
  logs.error { e }
end

