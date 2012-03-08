class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :country_id
      t.integer  :city_id
    end
    add_index :projects, [:country_id]
    add_index :projects, [:city_id]

    create_table :countries do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :cities do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :country_id
    end
    add_index :cities, [:country_id]
  end

  def self.down
    drop_table :projects
    drop_table :countries
    drop_table :cities
  end
end
