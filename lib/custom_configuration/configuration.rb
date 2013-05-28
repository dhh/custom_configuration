module CustomConfiguration
  class Configuration
    def initialize
      @configurations = Hash.new
    end
    
    def method_missing(method, *args)
      @configurations[method] ||= ActiveSupport::OrderedOptions.new
    end
  end
end