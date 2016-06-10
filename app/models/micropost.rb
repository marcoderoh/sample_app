class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate :picture_size

  private
  #validates the size of an uploaded pic
  def picture_size 
  	if picture_size > 5.megabytes
  		erros.add(:picture, "ayo your pic larger than 5mb")
  	end

  end
end
