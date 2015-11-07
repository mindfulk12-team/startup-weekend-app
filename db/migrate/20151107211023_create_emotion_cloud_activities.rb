class CreateEmotionCloudActivities < ActiveRecord::Migration
  def change
    create_table :emotion_cloud_activities do |t|
      t.json :cloud

      t.timestamps null: false
    end
  end
end
