class CreateMoodts < ActiveRecord::Migration[6.0]
  def change
    create_table :moodts do |t|
      t.string :title
      t.integer :played_count, default: 0 
      t.references :moodgallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
