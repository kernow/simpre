module Simpre
  module Helper
    def decorate(item_or_collection)
      if item_or_collection.respond_to?(:map)
        item_or_collection.map { |item| decorate(item) }
      else
        item = item_or_collection
        decorator = "#{item.class}Presenter".constantize
        return item if item.instance_of?(decorator)
        decorator.new(item, current_view_context)
      end
    end

    private

    def current_view_context
      is_a?(ApplicationController) ? view_context : self
    end
  end
end
