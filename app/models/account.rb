class Account < ActiveRecord::Base
  has_many :operations
  validates_presence_of :balance
  validates_numericality_of :balance
end
