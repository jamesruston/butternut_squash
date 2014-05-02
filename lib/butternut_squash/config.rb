require 'yaml'

module ButternutSquash
  module Config
    def self.set(k,v)
      config = YAML.load(File.read('config.yml'))
      File.open('config.yml', 'w+') do |file|
        config[k] = v
        file.write(config.to_yaml)
      end
    end
  end
end