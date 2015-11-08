class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.text :name
      t.text :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
