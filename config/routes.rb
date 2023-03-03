# frozen_string_literal: true

module FitNoSugarAdded
  class Routes < Hanami::Routes
    root { "Welcome to Fit No Sugar Added App" }

    get "/exercises", to: "exercises.index"
    get "/exercises/:id", to: "exercises.show"
  end
end
