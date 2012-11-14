class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :description
      t.datetime :end_time
      t.string :job_title
      t.datetime :start_time
      t.integer :cv_id

      t.timestamps
    end
  end
end
