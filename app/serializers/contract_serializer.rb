class ContractSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :details, :milestones, :legal, :copyright, :compensation, :creation_date, :developer_id, :contractor_id, :developer_signature, :contractor_signature

  belongs_to :contractor
  belongs_to :developer
end
