class Paper < ApplicationRecord
  belongs_to :users
  has_many :organisms

end
