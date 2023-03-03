# frozen_string_literal: true

module FitNoSugarAdded
  module Actions
    module Exercises
      class Show < FitNoSugarAdded::Action
        params do
          required(:id).value(:integer)
        end

        def handle(request, response)

          exercises = [
            { id: 1, name: "Assisted dip" },
            { id: 2, name: "Back squat" }
          ]

          exercise = exercises.find do |exercise|
            exercise[:id] == request.params[:id]
          end

          response.format = :json
          response.body = exercise.to_json
        end
      end
    end
  end
end
