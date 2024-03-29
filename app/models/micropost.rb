class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  belongs_to :users

  validates :user_id, presence: true  
  validates :content, presence: true, length: { maximum: 140 }
  
  default_scope order: 'microposts.created_at DESC'
end
