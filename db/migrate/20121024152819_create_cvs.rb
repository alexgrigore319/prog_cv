class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.text :about
      t.string :phone
      t.string :contact_email
      t.integer :user_id

      t.timestamps
    end
  end
end
