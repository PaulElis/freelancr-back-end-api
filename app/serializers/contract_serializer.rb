class ContractSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :details, :milestones, :legal, :copyright, :compensation, :creation_date, :developer_id, :contractor_id

  # belongs_to :contractor, :class_name => "User", foreign_key: 'contractor_id'
  # belongs_to :developer, :class_name => "User", foreign_key: 'developer_id'
end
