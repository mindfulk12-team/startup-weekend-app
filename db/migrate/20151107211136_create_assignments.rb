class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text :assignment_type
      t.datetime :due
      t.references :teacher

      t.timestamps null: false
    end
  end
end
