require File.join(File.dirname(__FILE__), 'boot')


# RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  # config.gem 'declarative_authorization', :source => 'http://gemcutter.org'
  # config.gem 'searchlogic', :version=> '2.4.27'

  config.autoload_once_paths += %W( #{RAILS_ROOT}/lib )
  config.autoload_paths += Dir["#{RAILS_ROOT}/app/models/*"].find_all { |f| File.stat(f).directory? }
end
