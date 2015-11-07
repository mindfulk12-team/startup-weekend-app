class CreateJournalActivities < ActiveRecord::Migration
  def change
    create_table :journal_activities do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
