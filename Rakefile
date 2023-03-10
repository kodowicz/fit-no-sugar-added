# frozen_string_literal: true

require "hanami/rake_tasks"
require "rom/sql/rake_task"
require "hanami/prepare"

namespace :db do
  task setup: :environment do
    Hanami.app.prepare(:persistence)
    ROM::SQL::RakeSupport.env = Hanami.app["persistence.config"]
  end
end
