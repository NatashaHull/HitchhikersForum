class Post < ActiveRecord::Base
  attr_accessible :title, :body, :user_id, :user
  
  validates :title, :presence => true, :uniqueness => true
  validates :body, :presence => true
  validate :user_id, :presence => true
  
  belongs_to :user
end
