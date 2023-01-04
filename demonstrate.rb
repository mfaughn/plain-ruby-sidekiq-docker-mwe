require_relative 'job_example'
10.times do
  JobExample.perform_async("Async job sent at #{Time.now.strftime('%T')}")
  JobExample.perform_in(2, "Interval job sent at #{Time.now.strftime('%T')}")
  sleep 1
end
