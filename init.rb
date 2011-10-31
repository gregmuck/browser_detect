if Rails::VERSION::MAJOR == 2
  ApplicationController.send(:include, BrowserDetect)
else
  require "railtie" if defined?(Rails) && defined?(Rails::Railtie)
end
