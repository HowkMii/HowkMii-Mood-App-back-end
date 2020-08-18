class CreateMoodgalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :moodgalleries do |t|
      t.string :title
      t.datetime :date
      t.references :swing, null: false, foreign_key: true
      t.references :mooder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
