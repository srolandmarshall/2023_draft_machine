require 'active_record'

db_config = YAML.load_file('config/database.yml')
ENVIRONMENT = ENV['ENVIRONMENT'] || 'development'
ActiveRecord::Base.establish_connection(db_config[ENVIRONMENT])
