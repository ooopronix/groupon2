class AddCouponCodeToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :coupon, :string
    add_index :orders, :coupon, :unique => true
  end

  def self.down
    remove_index :orders, :coupon
    remove_column :orders, :coupon
  end
end
