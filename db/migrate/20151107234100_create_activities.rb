class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.json :cloud
      t.text :journal_text
      t.references :assignment, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
