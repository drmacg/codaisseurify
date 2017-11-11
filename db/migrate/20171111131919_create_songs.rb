class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :track_number
      t.string :duration
      t.timestamps
    end
  end
end
