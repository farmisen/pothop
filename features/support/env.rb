PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")

require 'capybara/cucumber'
require 'kelp/dropdown'
require 'kelp/visibility'
require 'padrino-core/cli/rake'

World(Kelp::Dropdown)
World(Kelp::Visibility)

##
# You can handle all padrino applications using instead:
#   Padrino.application
Capybara.app = Pothop.tap { |app|  }

# register the Padrino rake tasks, could not find a cleaner to do that, TODO: look better
Padrino::Tasks.files.flatten.uniq.each { |ext| load(ext) rescue puts "<= Failed load #{ext}" }

Before do
  Rake::Task["sq:migrate:auto"].reenable
  Rake::Task["sq:migrate:auto"].invoke
end
