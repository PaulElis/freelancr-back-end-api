class Contract < ApplicationRecord

  belongs_to :contractor, :class_name => "User", foreign_key: 'contractor_id'
  belongs_to :developer, :class_name => "User", foreign_key: 'developer_id'

end
