class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :first_name, :last_name
  has_many :developer_contracts
  has_many :contractor_contracts
end
