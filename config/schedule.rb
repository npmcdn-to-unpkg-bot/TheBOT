# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 1.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "db:migrate"
# end

every 20.minutes do
  runner "Newstweet.refresh_data"
end

every 20.minutes do
  runner "Music.refresh_data"
end

every 20.minutes do
  runner "Politic.refresh_data"
end

every 20.minutes do
  runner "Film.refresh_data"
end

every 20.minutes do
  runner "Socialjustice.refresh_data"
end

#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
