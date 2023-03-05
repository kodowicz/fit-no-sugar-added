# frozen_string_literal: true

module FitNoSugarAdded
  module Actions
    module Exercises
      class Create < FitNoSugarAdded::Action
        params do
          required(:name).value(:string)
          required(:link).value(:string)
          required(:notes).value(:string)
          required(:substitution).value(:string)
        end

        def handle(request, response)
          halt 422, { errors: request.params.errors }.to_json unless request.params.valid?

          exercise = { 
            name: request.params[:name],
            link: request.params[:link],
            notes: request.params[:notes],
            substitution: request.params[:substitution]
          }

          response.format = :json
          response.body = exercise.to_json
        end
      end
    end
  end
end
