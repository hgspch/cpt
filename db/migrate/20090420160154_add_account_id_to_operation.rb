class AddAccountIdToOperation < ActiveRecord::Migration
  def self.up
    add_column :operations, :account_id, :integer, :null => false
  end

  def self.down
    remove_column :operations, :account_id
  end
end
