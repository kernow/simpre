require "simpre/helper"
require "simpre/presenter"
require "simpre/version"

module Simpre
end

require "simpre/railtie" if defined?(Rails) && Rails::VERSION::MAJOR >= 3
