PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")

require 'capybara/cucumber'
require 'kelp/visibility'


World(Kelp::Dropdown)

##
# You can handle all padrino applications using instead:
#   Padrino.application
Capybara.app = Pothop.tap { |app|  }