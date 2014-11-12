namespace :db do
  desc "completely destroys the database and remakes db with seed data"
  task :regenerate => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
  end
end