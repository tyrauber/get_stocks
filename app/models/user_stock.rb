class UserStock < ActiveRecord::Base
  attr_accessible :stock_id, :user_id, :symbol
  
  belongs_to :user
  belongs_to :stock
  
  validates :symbol,:user_id, :stock_id, presence: true
  validates_uniqueness_of :symbol, :scope=> [:user_id, :stock_id]
  
end
