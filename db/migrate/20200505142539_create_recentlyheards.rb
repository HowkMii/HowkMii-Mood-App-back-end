class CreateRecentlyheards < ActiveRecord::Migration[6.0]
  def change
    create_table :recentlyheards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :Moodgallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
