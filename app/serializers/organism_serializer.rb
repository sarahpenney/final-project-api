class OrganismSerializer < ActiveModel::Serializer
  attributes :id, :name, :phylum, :order, :family, :genus, :body
  has_one :group
end
