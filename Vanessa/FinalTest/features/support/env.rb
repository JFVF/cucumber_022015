require 'yaml'
require 'pathname'
require 'rspec' 

def load_app_config_file(filename)
  config = YAML.load_file(File.dirname(__FILE__) + '/helper/' + filename)
  return config
end

AfterConfiguration do |config|
  $list = load_app_config_file('list.yml')
end