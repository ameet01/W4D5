class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.integer :album_id
      t.string :title
      t.integer :ord
      t.string :lyrics
      t.timestamps
    end
    add_index :tracks, :album_id
  end
end
