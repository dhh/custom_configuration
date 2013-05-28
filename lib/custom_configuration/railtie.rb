require 'rails/railtie'

module CustomConfiguration
  class Railtie < ::Rails::Railtie
    config.x = CustomConfiguration::Configuration.new
  end
end
