require 'sidekiq'

class JobExample
  include Sidekiq::Job
  
  def perform(msg)
    msg += " performed at #{Time.now.strftime('%T')}"
    puts msg
    File.open('/log/demonstration.log', 'a') { |f| f.puts msg }
  end
end
