PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")

require 'capybara/cucumber'
require 'kelp/dropdown'
require 'kelp/visibility'
require 'padrino-core/cli/rake'

World(Kelp::Dropdown)
World(Kelp::Visibility)

module Kelp
  # This module defines methods for working with dropdown fields in a web form,
  # including verifying their visible content as well as the `value` attribute
  # of selected options.
  #
  module Dropdown
    def dropdown_should_equal(dropdown, value)
      field = nice_find_field(dropdown)
      # See if there's a 'selected' option
      begin
        selected = field.find(:xpath, ".//option[@selected='selected']")
      # If not, find the option matching the first field value
      rescue Capybara::ElementNotFound
        selected = field.find(:xpath, ".//option[@value='#{field.value}']")
      end
      selected.text.should =~ /#{value}/
    end
  end
end




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
