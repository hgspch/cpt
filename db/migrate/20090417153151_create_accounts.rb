class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :name
      t.text :description
      t.decimal :balance, :precision => 14, :scale => 2, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
