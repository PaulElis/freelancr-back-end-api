class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :title
      t.string :summary
      t.string :details
      t.string :milestones
      t.string :legal
      t.string :copyright
      t.string :compensation
      t.datetime :creation_date
      t.integer :developer_id
      t.integer :contractor_id
      t.boolean :developer_signature
      t.boolean :contractor_signature
      t.boolean :approved

      t.timestamps
    end
  end
end
