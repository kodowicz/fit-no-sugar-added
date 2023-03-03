# frozen_string_literal: true

module FitNoSugarAdded
  module Actions
    module Exercises
      class Index < FitNoSugarAdded::Action
        def handle(request, response)
          exercises = [
            { id: 1, name: "Assisted dip" },
            { id: 2, name: "Back squat" }
          ]

          response.format = :json
          response.body = exercises.to_json
        end
      end
    end
  end
end
