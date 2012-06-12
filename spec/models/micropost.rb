class Micropost < ActiveRecord::Base
  attr_accessible :mr_no
  validates :user_id, presence: true
end