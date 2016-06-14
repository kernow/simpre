$LOAD_PATH.unshift File.dirname(__FILE__)

require 'rspec'
require 'simpre'

RSpec.configure do |config|
  config.order = 'random'
end
