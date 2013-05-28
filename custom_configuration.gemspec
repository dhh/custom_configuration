$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "custom_configuration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "custom_configuration"
  s.version     = CustomConfiguration::VERSION
  s.authors     = ["David Heinemeier Hansson"]
  s.email       = ["david@heinemeierhansson.com"]
  s.summary     = "Custom configuration storage for Rails"
  s.homepage    = "https://github.com/rails/custom_configuration"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "railties", "~> 3.0"

  s.add_development_dependency "rake"
end
