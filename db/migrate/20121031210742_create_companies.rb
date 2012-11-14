class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :address
      t.text :description
      t.integer :exp_id

      t.timestamps
    end
  end
end
