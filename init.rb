if Rails::VERSION::MAJOR == 2
  ActionController::Base.send(:include, BrowserDetect)
else
  require "railtie" if defined?(Rails) && defined?(Rails::Railtie)
end
