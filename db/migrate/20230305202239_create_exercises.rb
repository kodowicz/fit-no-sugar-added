# frozen_string_literal: true

ROM::SQL.migration do
  up do
    create_table(:exercises) do
      primary_key :id

      column :name,  String, null: false, unique: true
      column :link,  String, null: false
      column :notes, String

      column :created_at, Time, default: 'now()', null: false
      column :updated_at, Time, default: 'now()', null: false
    end
  end

  down do
    drop_table(:exercises)
  end
end
