class Organism < ApplicationRecord
  belongs_to :group
  has_many :papers
end
