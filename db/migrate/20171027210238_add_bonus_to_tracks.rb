class AddBonusToTracks < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :bonus, :boolean, default: false
  end
end
