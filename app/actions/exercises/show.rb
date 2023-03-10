# frozen_string_literal: true

module FitNoSugarAdded
  module Actions
    module Exercises
      class Show < FitNoSugarAdded::Action
        include Deps[
          repo: 'repositories.exercises'
        ]

        params do
          required(:id).value(:integer)
        end

        def handle(request, response)
          exercise = repo.find(request.params[:id])

          response.body = serialize(exercise)
        end
      end
    end
  end
end
