class AddTrackIdToNote < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :track_id, :integer, presence: true
  end
end
