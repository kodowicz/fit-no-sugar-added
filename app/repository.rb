# frozen_string_literal: true

require "rom-repository"

module FitNoSugarAdded
  class Repository < ROM::Repository::Root
    include Deps[container: "persistence.rom"]

    commands :create, update: :by_pk

    def all
      root.to_a
    end

    def find(id)
      root.by_pk(id).one!
    end
  end
end
