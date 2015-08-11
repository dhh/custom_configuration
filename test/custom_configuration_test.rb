require 'test_helper'
require 'custom_configuration/configuration'

class CustomConfigurationTest < ActiveSupport::TestCase
  setup do
    @config = Rails.configuration.x
  end

  test 'any top level configuration point is accessible' do
    @config.inline_jobs = :always
    assert_equal :always, @config.inline_jobs
  end

  test 'you can set multiple points and they are remembered' do
    @config.resque.inline_jobs = :always
    @config.resque.timeout     = 60

    assert_equal :always, @config.resque.inline_jobs
    assert_equal 60, @config.resque.timeout
  end

  test 'unset points are nil' do
    assert_nil @config.resque.nothing_here
  end
end
