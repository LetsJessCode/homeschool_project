# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc "Migrates both dev and testing dbs"
task :migrations do
  puts "Migrating both development and testing databases...."
  system("rails db:migrate && rails db:migrate RAILS_ENV=test")
end