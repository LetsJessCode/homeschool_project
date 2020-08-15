class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.boolean :english
      t.boolean :math
      t.boolean :science
      t.boolean :history
      t.boolean :foreign_language
      t.integer :student_id

      t.timestamps
    end
  end
end
