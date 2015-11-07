class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.datetime :due

      t.timestamps null: false
    end
  end
end
