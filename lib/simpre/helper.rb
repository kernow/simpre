module Simpre
  # A helper method for decorating objects
  module Helper
    def decorate(item_or_collection)
      if item_or_collection.respond_to?(:map)
        item_or_collection.map { |item| decorate(item) }
      else
        item = item_or_collection
        presenter = "#{item.class}Presenter".constantize
        return item if item.instance_of?(presenter)
        presenter.new(item, current_view_context)
      end
    end

    private

    def current_view_context
      # if calling `decorate` from another presenter return the existing
      # view_context
      return h if is_a?(Presenter)
      if defined?(ApplicationController) && is_a?(ApplicationController)
        view_context
      else
        self
      end
    end
  end
end
