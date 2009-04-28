class RenameTypeInOperations < ActiveRecord::Migration
  def self.up
    rename_column :operations, :type, :ope_type
    rename_column :operations, :date, :ope_date
  end

  def self.down
    rename_column :operations, :ope_type, :type
    rename_column :operations, :ope_date, :date
  end
end
