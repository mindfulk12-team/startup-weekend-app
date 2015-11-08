class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :name
      t.text :email
      t.string :password_digest

      t.references :teacher

      t.timestamps null: false
    end
  end
end
