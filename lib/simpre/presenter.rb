require 'delegate'

module Simpre
  class Presenter < SimpleDelegator
    include Simpre::Helper

    def initialize(model, view)
      @model = model
      @view = view
      super(@model)
    end

    def h
      @view
    end

    # Create a nicer method to get the decorated object
    alias_method :object, :__getobj__
  end
end
