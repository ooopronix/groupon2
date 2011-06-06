class CreateRegions < ActiveRecord::Migration
  def self.up
    create_table :regions do |t|
      t.column :name, :string
      t.column :country_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :regions
  end
end
