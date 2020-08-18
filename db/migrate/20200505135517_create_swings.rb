class CreateSwings < ActiveRecord::Migration[6.0]
  def change
    create_table :swings do |t|
      t.string :name

      t.timestamps
    end
  end
end
