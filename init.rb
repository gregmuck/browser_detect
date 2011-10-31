if Rails::VERSION::MAJOR == 2
  require 'browser_detect'

  class ActionController::Base
    include BrowserDetect
  end
#    ApplicationController.send(:include, BrowserDetect)
else
  require "railtie" if defined?(Rails) && defined?(Rails::Railtie)
end
