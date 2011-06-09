class AddGiftStateOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :gift_state, :string
    add_index :orders, :gift_state
  end

  def self.down
    remove_column :orders, :gift_state
    remove_index :orders, :guft_state
  end
end
