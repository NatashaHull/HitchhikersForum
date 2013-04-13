class Post < ActiveRecord::Base
  attr_accessible :title, :body, :user_id, :user
  
  belongs_to :user
  validates_presence_of :title, :body
end
