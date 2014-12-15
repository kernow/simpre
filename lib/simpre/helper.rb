module Simpre
  module Helper

    def decorate(item_or_collection)
      if item_or_collection.respond_to?(:map)
        item_or_collection.map{ |item| decorate(item) }
      else
        item = item_or_collection
        decorator = "#{item.class}Presenter".constantize
        return item if decorator === item
        decorator.new(item)
      end
    end

  end
end
