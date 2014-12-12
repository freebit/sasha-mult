class Mult < ActiveRecord::Base

  belongs_to :user

  validates :video_id, presence: true, uniqueness: true
  validates :title, presence: true
  validates :user, presence: true

end
