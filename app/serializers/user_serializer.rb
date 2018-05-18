class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name
  has_many :developer_contracts
  has_many :contractor_contracts
end
