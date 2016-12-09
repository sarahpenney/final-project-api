class Paper < ApplicationRecord
  belongs_to :user
  has_many :organisms

end
