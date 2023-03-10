# frozen_string_literal: true

module FitNoSugarAdded
  module Persistence
    module Relations
      class Exercises < ROM::Relation[:sql]
        schema(:exercises, infer: true)
      end
    end
  end
end
