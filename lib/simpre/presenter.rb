require 'delegate'

module Simpre
  class Presenter < SimpleDelegator
    def initialize(model, view)
      @model = model
      @view = view
      super(@model)
    end

    def h
      @view
    end
  end
end
