class OrganismSerializer < ActiveModel::Serializer
  attributes :id, :name, :phylum, :order, :family, :genus, :body, :image
  has_one :group
end
