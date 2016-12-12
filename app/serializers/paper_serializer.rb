class PaperSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body, :user

  belongs_to :user
end
