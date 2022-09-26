require 'simplecov'

RSpec.configure do |c|
  c.warnings = true
end

SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter

SimpleCov.start
