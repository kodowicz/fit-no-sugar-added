# auto_register: false
# frozen_string_literal: true

require "hanami/action"

module FitNoSugarAdded
  class Action < Hanami::Action
    before :set_headers

    private

    def set_headers(_request, response)
      response.headers['Content-Type'] = 'application/json'
    end

    def serialize(collection)
      if collection.is_a?(Array)
        collection.map(&:to_h).to_json
      else
        collection.to_h.to_json
      end
    end
  end
end
