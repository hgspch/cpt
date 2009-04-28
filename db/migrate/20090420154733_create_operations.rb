class CreateOperations < ActiveRecord::Migration
  def self.up
    create_table :operations do |t|
      t.string :title
      t.text :description
      t.decimal :amount
      t.integer :type
      t.date :date
      t.integer :repeat

      t.timestamps
    end
  end

  def self.down
    drop_table :operations
  end
end
