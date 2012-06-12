class Micropost < ActiveRecord::Base
  attr_accessible :FTND, :HONC, :address, :content, :date, :dob, :education, :email, :gender, :jenis_pasien, :marital_status, :med_cond, :mr_no, :nationality, :occupation, :pengobatan, :phone, :qd_decision
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  default_scope order: 'microposts.created_at DESC'
end
