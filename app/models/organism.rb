class Organism < ApplicationRecord
  belongs_to :group
  belongs_to :paper, optional: true
end
