# frozen_string_literal: true

module FitNoSugarAdded
  module Actions
    module Exercises
      class Create < FitNoSugarAdded::Action
        include Deps[
          repo: 'repositories.exercises'
        ]

        params do
          required(:name).value(:string)
          required(:link).value(:string)
          required(:notes).value(:string)
        end

        def handle(request, response)
          halt 422, { errors: request.params.errors }.to_json unless request.params.valid?

          exercise = repo.create(request.params)

          response.body = serialize(exercise)
        end
      end
    end
  end
end
