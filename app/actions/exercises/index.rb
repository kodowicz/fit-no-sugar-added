# frozen_string_literal: true

module FitNoSugarAdded
  module Actions
    module Exercises
      class Index < FitNoSugarAdded::Action
        include Deps[
          repo: "repositories.exercises"
        ]

        def handle(request, response)
          exercises = repo.all

          response.body = serialize(exercises)
        end
      end
    end
  end
end
