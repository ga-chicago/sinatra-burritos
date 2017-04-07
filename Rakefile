namespace :db do
  desc "Create the database"
  task :migrate do
    puts "Creating database if it doesn't exist..."
    exec("psql -a -f db/migrations.sql")
  end
end
