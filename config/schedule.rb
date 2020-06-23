# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :environment, :development
set :output, { :error => 'log/error.log', :standard => 'log/cron.log' }
#
every 1.days do
#   command "/usr/bin/some_great_command"
#  runner "NotificationMailer.send_confirm_to_user"
  rake "mail_task:mailer"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
