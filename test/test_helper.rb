# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require 'test/unit'
require 'rails'

class FakeApplication < Rails::Application; end
Rails.application = FakeApplication

require 'custom_configuration'
