module CustomConfiguration
  class Configuration
    def initialize
      @configurations = Hash.new
    end

    def method_missing(method, *args)
      if method =~ /=$/
        @configurations[$`.to_sym] = args.first
      else
        @configurations.fetch(method) {
          @configurations[method] = ActiveSupport::OrderedOptions.new
        }
      end
    end
  end
end
