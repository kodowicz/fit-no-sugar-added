# frozen_string_literal: true

module FitNoSugarAdded
  class Settings < Hanami::Settings
    setting :database_url, constructor: Types::String
  end
end
