class CreateMooders < ActiveRecord::Migration[6.0]
  def change
    create_table :mooders do |t|
      t.string :name

      t.timestamps
    end
  end
end
