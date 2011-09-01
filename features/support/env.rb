require 'capybara'
require 'capybara/cucumber'
require 'capybara/session'
require 'fileutils'

Capybara.default_selector = :css
Capybara.default_driver = :selenium
Capybara.use_default_driver

require 'test/unit/assertions'
World(Test::Unit::Assertions)

def get_conf(key)
  @confs ||= YAML::load( File.open(File.dirname(__FILE__) + "/../step_definitions/conf.yml") )
  @confs[key]
end

# Switch to the test database
@database_config_path = File.dirname(__FILE__) + "/../../config/config.php"
@database_config_path_temp = File.dirname(__FILE__) + "/../../config/config.temp.php"
@database_config_path_test = File.dirname(__FILE__) + "/../../config/config.test.php"
@path_to_dump_file = File.dirname(__FILE__) + '/db/php_cucumber_test.sql'
@test_database_username = 'root'
@test_database_name = 'php_cucumber_test'
@db_confs = "-h " + get_conf("db_server")

def switch_to_test_database
  FileUtils.mv @database_config_path, @database_config_path_temp
  FileUtils.cp @database_config_path_test, @database_config_path
end

def reset_database
  drop_database
  create_database
  load_database
end

def load_database
  run "mysql #{@db_confs} -u root #{@test_database_name} < #{@path_to_dump_file};"
end

def create_database
  run "mysql #{@db_confs} -u root -e 'CREATE DATABASE #{@test_database_name};'"
end

def drop_database
  run "mysql #{@db_confs} -u root -e 'DROP DATABASE IF EXISTS #{@test_database_name};'"
end

def rollback_to_core_data
  FileUtils.mv @database_config_path_temp, @database_config_path
end

at_exit do
  restore_main_config
  rollback_to_core_data
  puts "Cucumber finished, restored original db config file"
end

def run(command, verbose = false, message = nil)
  if verbose then
    puts "#{message}"
    puts command
    result = `#{command}`
    puts result
    return result
  else
    `#{command}`
  end
end

# Check to see if test database exists, if not create the user p
puts "Reseting test database..."
switch_to_test_database
reset_database

