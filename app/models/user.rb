class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :user_stocks
  has_many :stocks, through: :user_stocks
  
end
