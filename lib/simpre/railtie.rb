class Simpre::Presenter
  def h
    ActionController::Base.helpers
  end
end
ActiveSupport.on_load(:action_controller) { include Simpre::Helper }
ActiveSupport.on_load(:action_view)       { include Simpre::Helper }
