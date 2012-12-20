class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :users

  
  validates :content, presence: true, length: { maximum: 140 }
end
