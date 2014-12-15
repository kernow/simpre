require 'simpre/helper'
require 'simpre/presenter'
require 'simpre/version'

module Simpre
end

ActiveSupport.on_load(:action_controller) { include Simpre::Helper }
ActiveSupport.on_load(:action_view)       { include Simpre::Helper }
