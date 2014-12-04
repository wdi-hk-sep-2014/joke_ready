class Vote < ActiveRecord::Base
  belongs_to :joke, dependent: :destroy
end
