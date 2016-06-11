require 'simpre/helper'
require 'simpre/presenter'
require 'simpre/version'
require 'simpre/railtie' if defined?(Rails) && Rails::VERSION::MAJOR >= 3

module Simpre
end

ActiveSupport.on_load(:action_controller) { include Simpre::Helper }
ActiveSupport.on_load(:action_view)       { include Simpre::Helper }
