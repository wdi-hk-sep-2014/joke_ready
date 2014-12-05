class Joke < ActiveRecord::Base
  has_many :votes
  mount_uploader :image, ImageUploader
end
