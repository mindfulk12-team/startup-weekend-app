class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.text :name
      t.text :email

      t.timestamps null: false
    end
  end
end
