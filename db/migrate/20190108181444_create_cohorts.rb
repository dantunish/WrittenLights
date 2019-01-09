class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start
      t.date :end
      t.references :course
      t.references :instructor
      t.references :student
      t.timestamps
    end
  end
end
