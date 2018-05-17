class User < ApplicationRecord

  has_many :developer_contracts, class_name: 'Contract', foreign_key: 'developer_id'
  has_many :contractor_contracts, class_name: 'Contract', foreign_key: 'contractor_id'

  validates :username, presence: true, uniqueness: true

end
