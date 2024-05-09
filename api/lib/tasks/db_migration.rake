namespace :db_migration do
  desc 'Ridgepole Apply'
  task apply: :environment do
    run('--apply')
  end

  private

  def run(*options)
    config = 'config/database.yml'
    schema = 'db/schemas/Schemafile'
    rails_env   = ENV['RAILS_ENV'] || Rails.env

    command = "bundle exec ridgepole --config #{config} --env #{rails_env} --file #{schema}"
    command = [command, *options].join(' ')

    puts '=== run db migration... ==='
    puts "[Running] #{command}"
    system command
  end
end
