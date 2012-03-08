class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :countries, :number, :string

    add_column :cities, :num, :string
    add_column :cities, :language, :text
    add_column :cities, :overview, :text
  end

  def self.down
    remove_column :countries, :number

    remove_column :cities, :num
    remove_column :cities, :language
    remove_column :cities, :overview
  end
end
