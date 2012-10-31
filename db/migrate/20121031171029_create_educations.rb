class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :activities
      t.string :degree
      t.datetime :endtime
      t.string :institution
      t.datetime :start_time
      t.integer :cv_id

      t.timestamps
    end
  end
end
