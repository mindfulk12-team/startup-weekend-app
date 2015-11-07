task :r => :environment do
  exec 'rake db:migrate:reset RAILS_ENV=development; rake db:seed RAILS_ENV=development'
  exec 'rake db:migrate:reset RAILS_ENV=test; rake db:seed RAILS_ENV=test'
end
