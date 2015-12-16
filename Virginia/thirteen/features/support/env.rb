require 'rspec/expectations'  #evitar possibles errores
require 'pathname'   # siempre que se usa una variable
require 'yaml'

def find_config_file(filename) ## buscando el archivo en el path 
  root = Pathname.pwd
  while not root.root?
    root.find do |path|
      if path.file? and path.basename.to_s == filename
        return path.to_s
      end
    end
    root = root.parent
  end
  raise 'Configuration file' #{filename}' not found!'
end


def load_app_config_file(filename)
  config_file = find_config_file(filename)
  config = YAML.load_file(config_file)
  $app_context = config['app']['rootPath']  # matchs entre los parametros de yml
  return config
end

###definiendo after configuration
AfterConfiguration do |config|
  # read config file
  configuration = load_app_config_file('config.yml')
  # Load application configuration parameters
  $app_user = configuration['app']['admin_user']
  $app_pass = configuration['app']['admin_pass']
  $app_host = configuration['app']['host']
  $app_port = configuration['app']['port']
  $app_root = configuration['app']['rootPath']
end
