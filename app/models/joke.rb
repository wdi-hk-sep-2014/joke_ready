class Joke < ActiveRecord::Base
  has_many :votes
  mount_uploader :image, ImageUploader
  validates :image, acceptance: true

  def likeness
     if self.thumb_up && self.thumb_down
      self.thumb_up - self.thumb_down
    else
      0
    end
  end
end