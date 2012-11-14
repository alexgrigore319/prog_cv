class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.text :activities
      t.string :degree
      t.datetime :end_time
      t.string :institution
      t.datetime :start_time
      t.integer :cv_id

      t.timestamps
    end
  end
end
