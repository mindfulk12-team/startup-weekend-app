class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.datetime :due
      t.text :instruction
      t.text :title
      t.references :teacher
      t.text :assignment_type
      t.timestamps null: false
    end
  end
end
