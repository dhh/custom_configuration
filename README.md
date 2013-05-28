# Custom Configuration

Makes it easy to use the Rails.configuration point as your central configuration store, even for things not included in Rails.

``` ruby
# config/environments/production.rb
BCX::Application.configure do
  config.x.resque.jobs_inline = true
end

# config/initializers/resque.rb
if Rails.configuration.x.resque.jobs_inline
  Resque.inline = true 
end
```
